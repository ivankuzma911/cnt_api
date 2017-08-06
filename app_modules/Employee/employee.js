const Parent = require('./Parent.js');


class Employee extends Parent{
    constructor(data){
        super(data)
    }
}

module.exports = Employee;