# * Manager is initialized with a name, department and age. All of these attributes can change.
#   * `Manager#name`
#     * returns a `String` that is the manager's name
#   * `Manager#department`
#     * returns a `String` that is the department that the manager oversees
#   * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager
#   * `Manager#employees`
#     * returns an `Array` of all the employees that the manager oversees
#   * `Manager#roles`
#     * returns an `Array` of all the roles that the manager oversees
#   * `Manager.all`
#     * returns an `Array` of all the managers
#   * `Manager.all_departments`
#     * returns an `Array` of all the department names that every manager oversees without repetitions
#   * `Manager.average_age`
#     * returns a `Float` that is the average age of all the managers
class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize (name, department, age)
        @name = name
        @department = department
        @age = age
        self.class.all << self
    end
    def self.all
        @@all
    end
    def employees
        Employee.all.select{|employee| employee.manager == self}
    end
    def roles
        self.employees.map {|employee| employee.role}
    end
    def self.all_departments
        Manager.all.map {|manager| manager.department}.uniq
    end
    def self.average_age
        age_total = 0.0
        Manager.all.each {|manager| age_total += manager.age}
        if Manager.all.length != 0
        age_total / Manager.all.length
        end
    end

end
