const options = require('../utils/options'),
      logger = require('../utils/logger');

class Parent {
    
    defaultCallbackHandler(cb, err, result) {
        if(options.query_output){
            logger.info(qb.last_query());
        }
        return cb(err, result);
    }
    
}

module.exports = Parent;