// ***node.js server config using a framework(express)

var express = require('express');

var app = express();

var PORT = 3000;

app.get('/', function (request, response){
    response.status(200).send('Hello world');
});

app.listen(PORT, function(){
    console.log('Server is running on PORT:', PORT);
})

// ***node.js server config without a framework

/* var http = require('http');
var port

var server = http.createServer(
    
    function(request, response){
    response.writeHead(200, {"Content-type":"text/plain"});
    response.end("Hello World \n");
});

server.listen(3000, function() {
    console.log('Server is running at 3000')
}) */


