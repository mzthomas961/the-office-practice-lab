
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
