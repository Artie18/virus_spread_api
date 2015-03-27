var express = require('express');
var app     = express();
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var port = process.env.PORT || 4508;

var router = express.Router();

router.get('/', function(req, res) {
  res.json({
    message: 'VIRUS! Virus Everywhere!',
    apiVersion: '0.0.1',
    apiDocs: 'TODO'
  });
});

app.use('/api', router);

app.listen(port);
console.log('You can "Kill all Humas!" on port: ' + port);
