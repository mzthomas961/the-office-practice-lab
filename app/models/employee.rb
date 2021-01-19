# * Employee is initialized with a name and salary. All of these attributes can change.
#   * `Employee#name`
#     * returns a `String` that is the employee's name
#   * `Employee#salary`
#     * returns a `Fixnum` that is the employee's salary
#   * `Employee#manager`
#     * returns an instance of their manager
#   * `Employee#role`
#     * returns an instance of their role
#   * `Employee.all`
#     * returns an `Array` of all the employees
#   * `Employee.paid_over`
#     * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
#   * `Employee.find_by_department`
#     * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
#   * `Employee.search_by_role`
#     * takes a `String` argument that is the name of a role and returns all the employees who work at that role
#   * `Employee#get_promoted`
#     * takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary.
class Employee
attr_accessor :name, :salary, :role, :manager
@@all = []

def initialize (name,salary,role,manager)
    @name = name
    @salary = salary
    @role = role
    @manager = manager
    self.class.all << self
end
def self.all
    @@all
end

end
