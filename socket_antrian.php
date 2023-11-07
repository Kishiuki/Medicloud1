

<?php

require 'vendor/autoload.php';

require 'AntrianSocket.php';
use Ratchet\Server\IoServer;
use Ratchet\Http\HttpServer;
use Ratchet\WebSocket\WsServer;
use MyApp\AntrianSocket;

$server = IoServer::factory(
    new HttpServer(
        new WsServer(
            new AntrianSocket()
        )
    ),
    5160
);

$server->run();


/*
===============================================

require 'vendor/autoload.php';
use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;

require 'demo.php';

// Run the server application through the WebSocket protocol on port 8080
$app = new Ratchet\App("localhost", 8080, '0.0.0.0', $loop);
$app->route('/demo', new Demo, array('*'));
$app->run();

/*
==============================================
<?php
/**
 * Script to start the Chat server. The default port is 9191 and listen to all interfaces.

require 'vendor/autoload.php';
require 'demo.php';
use Ratchet\Server\IoServer;

$port = isset($_SERVER['CHAT_SERVER_PORT']) ? $_SERVER['CHAT_SERVER_PORT'] : 9191;
$bindAddr = isset($_SERVER['CHAT_BIND_ADDR']) ? $_SERVER['CHAT_BIND_ADDR'] : '0.0.0.0';
$server = IoServer::factory(new MyApp\Demo(), $port, $bindAddr);

printf("Chat server running on %s:%s.\n--\n", $bindAddr, $port);
$server->run();

 */
