// ***node.js server config using a framework(express)
var express = require('express');

const app = express();

const port = process.env.PORT || 3000
const host = '0.0.0.0';

app.get('/', (req, res) => {
    res.send('Hello :) I have been dockerized');
})

app.listen(port, host);
console.log(`Running on http://${host}:${port}`)
