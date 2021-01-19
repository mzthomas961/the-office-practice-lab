
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
def self.paid_over(salary)
    Employee.all.select { |employee|
        employee.salary > salary
    }
end 
def self.find_by_department(department)
    Employee.all.find { |employee|
        employee.manager.department == department 
        employee
    }
end

def self.search_by_role(role)
    Employee.all.select { |employee|
        employee.role.name == role
    }
end 

def get_promoted(new_role)
    self.role = new_role 
    self.salary += 50

end 

end
