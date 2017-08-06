const config = require('./config/config')['server'],
      express = require('express'),
      logger = require('./app_modules/utils/logger'),
      bodyParser = require('body-parser'),
      options = require('./app_modules/utils/options');

let app = express();

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE, PATCH");
    next();
});
app.use(bodyParser.json());

app.use((req, res, next)=> {
    if(options.request_output){
        logger.info('req.body = ' + JSON.stringify(req.body));
        logger.info('req.query = ' + JSON.stringify(req.query));
    }
    next()
});

let routes = require('./app_modules/routes')(app);

let server = app.listen(config.port, function () {
    var host = server.address().address;
    var port = server.address().port;
    logger.info("Example app listening at http://%s:%s", host, port);   
});

server.on('uncaughtException', function (req, res, route, err) {
    logger.err('server uncaughtException' + err);
    res.send(200, { handler: 'server uncaughtException'});
});



