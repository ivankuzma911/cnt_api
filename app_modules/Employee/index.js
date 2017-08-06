let Employee = require('./employee');  

/**
 * Factory for extending Employee's class
 */
class EmployeeFactory {
    static create(type) {
        switch (type) {              
            default: return new Employee();
        }
    }
}

module.exports = EmployeeFactory;