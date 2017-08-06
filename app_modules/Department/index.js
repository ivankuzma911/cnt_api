let Department = require('./department');
    

/**
 * Factory for extending Employee's class
 */
class DepartmentFactory {
    static create(type) {
        switch (type) {
            default: return Department;
        }
    }
}

module.exports = DepartmentFactory;