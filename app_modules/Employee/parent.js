const async = require('async'),
      employee = require('../models/employee');

class Parent{
    constructor(data){
        this.getEmployees = this.getEmployees.bind(this);
        this.getEmployeesTotalCount = this.getEmployeesTotalCount.bind(this);
    }

    getMainData(data, cb){
        this.page = data.page || 1;
        this.employeeName = data.employeeName;       
        async.parallel({
             employees: this.getEmployees,
             totalEmployees:this.getEmployeesTotalCount
        }, cb)
    }

    getEmployees(cb){
        employee.getEmployees({
            page: this.page,
            name: this.employeeName
        }, cb)
    }

    getEmployeesTotalCount(cb){        
        employee.getEmployeesTotalCount(this.employeeName, cb)
    }

    deleteEmployee(id, cb){
        employee.deleteEmployeeById(id, cb)
    }
    
    updateEmployee(empId, empData, dep_id, cb){             
        employee.updateEmployeeById({
            empId: empId,
            empData:empData,
            dep_id: dep_id
        }, cb)
    }
}


module.exports = Parent;