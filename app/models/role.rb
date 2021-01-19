
# ### **`Role`**
# * Role is initialized with a name, which won't ever change.
# * `Role#name`
#   * returns a `String` that is the role's name
# * `Role#employees`
#   * returns an array of all the Employees who work at that role
# * `Role#managers`
#   * returns a unique array of all the Manager instances who oversee Employees at that role 
# * `Role.all`
#   * returns an `Array` of all the roles
# * `Role#add_employee`
#   * takes a `String` argument of an employee's name, a `Fixnum` argument of the employee's salary and an instance of a Manager class and creates a new employee who work at this role
class Role
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end
    def self.all
        @@all
    end
    def employees
        Employee.all.select {|employee| employee.role == self}
    end
    def managers
        self.employees.map {|employee| employee.manager}.uniq
    end
    def add_employee (name,salary,manager)
        Employee.new(name,salary,self,manager)
    end

end