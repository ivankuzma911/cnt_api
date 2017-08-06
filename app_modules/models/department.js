const qb = require('../utils/query_builder'),
      Parent = require('./parent');
    

class Department extends Parent {
    constructor() {
        super();
        this.table = 'departments'
    }

    getAllDepartments(cb) {
        qb.select('dp_name')
            .get(this.table, this.defaultCallbackHandler.bind(null, cb));
    }

    getDepartmentId(name, cb){
        qb.select('dp_id')
            .where({'dp_name': name})
            .get(this.table, this.defaultCallbackHandler.bind(null, cb));
    }


}

module.exports = new Department;