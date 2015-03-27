var express = require('express');
var app     = express();
var bodyParser = require('body-parser');
var human = require('./models/human').human();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var port = process.env.PORT || 4508;

var router = express.Router();
var renderError = function (err) {
  return {
    status: 500,
    message: err
  }
}
router.get('/', function(req, res) {
  console.log('We started to kill Humas with ' +  req.path)
  res.json({
    message: 'VIRUS! Virus Everywhere!',
    apiVersion: '0.0.1',
    apiDocs: 'TODO'
  });
});

router.post('/device/reg', function (req, res) {
  console.log('Trying to register new user: ' + req.query.id);
  human.create(req.query, function (result, err) {
    if(err) {
      res.write(JSON.stringify(renderError(err)));
    } else {
      res.write(JSON.stringify({
        status: 200,
        res: result
      }))
    }
    res.end('That is all!')
  });
});

app.use('/api', router);

app.listen(port);

console.log('You can "Kill all Humas!" on port: ' + port);
