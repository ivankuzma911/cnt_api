const Employee = require('./Employee'),
      Department = require('./Department'),
      {waterfall} = require('async');

let defaultHandler = (err, result, res) =>{
    if (err) {
        res.json(err);
    }
    else {
        res.json(JSON.stringify(result));
    }
};

let register = app => {
    app.get('/', function (req, res) {
        res.send('Hello World');
    });

    app.get('/employees', function (req, res) {
        Employee.create('employee').getMainData(req.query, (err, result)=> {
            return defaultHandler(err, result, res);
        });
    });

    app.delete('/employees/:id', function(req, res){
        Employee.create('employee').deleteEmployee(req.params.id, (err, result)=>{
            return defaultHandler(err, result, res);
        });
    });

    app.get('/departments', function (req, res) {
        Department.create('department').getAllDepartments((err, result)=> {
            return defaultHandler(err, result, res);
        });
    });

    app.patch('/employees/:id', function(req, res) {        
        waterfall([
            Department.create('department').getDepartmentId.bind(null, req.body.selectedDepartment),
            Employee.create('employee').updateEmployee.bind(null, req.params.id, req.body)
        ], (err, result)=> {
            return defaultHandler(err, result, res);
        })
    })

};


module.exports = register;
