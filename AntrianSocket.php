<?php

namespace MyApp;
ini_set('max_execution_time', '0');
use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;

class AntrianSocket implements MessageComponentInterface {
    public $clients;
    private $logs;
    private $connectedUsers;
    private $connectedUsersNames;
	
    public function __construct() {
        $this->clients = new \SplObjectStorage;
        $this->logs = [];
        $this->connectedUsers = [];
        $this->connectedUsersNames = [];
    }

    public function onOpen(ConnectionInterface $conn) {
        $this->clients->attach($conn);
        echo "New connection! ({$conn->resourceId})\n";
        $conn->send(json_encode($this->logs));
        $this->connectedUsers [$conn->resourceId] = $conn;
    }

    public function onMessage(ConnectionInterface $from, $msg) {
        // Do we have a username for this user yet?
        if (isset($this->connectedUsersNames[$from->resourceId])) {
            // If we do, append to the chat logs their message
            $json = (Object) json_decode($msg);
            $this->logs[] = array(
                "sc_id" =>$json->sc_id ,
                "poli" =>$json->poli ,
                "nomor" => $json->nomor,
                "timestamp" => time()
            );
            $this->sendMessage(end($this->logs));
        } else {
            // If we don't this message will be their username
            $this->connectedUsersNames[$from->resourceId] = $msg;
        }
    }
    // public function onMessage(ConnectionInterface $conn, $message)
    // {
    //     // send message out to all connected clients
    //     foreach ($this->clients as $client) {
    //         $this->sendMessage(end($this->logs));
    //     }
    // }

    public function broadcast($topic, $msg) {
    // if (array_key_exists($topic, $this->subscribedTopics)) {
        $this->subscribedTopics[$topic]->broadcast($msg);
    // }
}

    public function onClose(ConnectionInterface $conn) {
        // Detatch everything from everywhere
        $this->clients->detach($conn);
        unset($this->connectedUsersNames[$conn->resourceId]);
        unset($this->connectedUsers[$conn->resourceId]);
    }

    public function onError(ConnectionInterface $conn, \Exception $e) {
		echo $e;
        $conn->close();
    }

    private function sendMessage($message) {
        foreach ($this->connectedUsers as $user) {
            $user->send(json_encode($message));
        }
    }
}
