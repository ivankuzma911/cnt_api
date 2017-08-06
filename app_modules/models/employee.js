const qb = require('../utils/query_builder'),
      config = require('../../config/config'),     
      Parent = require('./parent');


class Employee extends Parent {
    constructor() {
        super();
        this.table = 'employees'
    }

    getEmployees(data, cb) {        
        qb.select('e.emp_id, e.emp_name, e.emp_active, d.dp_name')
            .join('departments d', ' e.emp_dep_id = d.dp_id')
            .like('e.emp_name', this.employeeNameStatement(data.name), 'after')
            .order_by('e.emp_id')
            .limit(config.grid.employeesPerPage)
            .offset(this.getOffsetParam(data.page))
            .get(this.table + ' e', this.defaultCallbackHandler.bind(null, cb));
    }

    employeeNameStatement(name) {        
        return name || '%%';
    }

    getOffsetParam(page) {
        return page * config.grid.employeesPerPage - config.grid.employeesPerPage;
    }

    getEmployeesTotalCount(name, cb){               
        qb.like('emp_name', this.employeeNameStatement(name), 'after')
            .count(this.table, this.defaultCallbackHandler.bind(null, cb));
    }

    deleteEmployeeById(id, cb){
        qb.delete(this.table, {emp_id: id}, cb)
    }

    updateEmployeeById(data, cb){       
        let employee = {
            emp_name: data.empData.empName,
            emp_dep_id: data.dep_id[0].dp_id,
            emp_active: data.empData.activeCheckBox ? 'yes' : 'no'
        };
        qb.update(this.table, employee, {emp_id:data.empId},this.defaultCallbackHandler.bind(null, cb));
    }

}

module.exports = new Employee;