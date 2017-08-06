const department = require('../models/department');

class Parent{    
    static getAllDepartments(cb){
        department.getAllDepartments(cb);
    }   
    
    static getDepartmentId(empName, cb){
        department.getDepartmentId(empName, cb);
    }
}


module.exports = Parent;