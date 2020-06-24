class Employee
    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
         @boss << self if !@boss.nil?
    end

    def bonus(multiplier)
       (self.salary) * multiplier
    end
end

class Manager < Employee
  attr_reader :subordinates, :salary
  def initialize(name, title, salary, boss = nil) #could use *boss if multiple bosses
    super
    #super(name, title, salary, boss)
    @subordinates = []
  end

  def <<(employee)
    @subordinates << employee 
  end

  # def bonus(multiplier)
  #   total_subordinate_salaries = 0
  #   # ned: @subordinates = [darren]
  #   # darren: @subordinates = [shawna, david]
  #   # queue = subordinates. 
  #   @subordinates.each do |subordinate|
  #     # add their salary
  #     total_subordinate_salaries += subordinate.salary
  #     # also want to add their subordinate's salaries if they are a manager
  #     total_subordinate_salaries += subordinate.bonus(1) if subordinate.is_a?(Manager)
      
  #   end
  #   multiplier * total_subordinate_salaries
  # end

  def bonus(multiplier)
    queue = [self] #@subordinates.dup
    total = -salary
    until queue.empty?
      curr_person = queue.shift
      queue.concat(curr_person.subordinates) if curr_person.is_a?(Manager)
      total += curr_person.salary
    end
    multiplier * total
  end
end

if $PROGRAM_NAME == __FILE__
  ned = Manager.new("Ned", "Founder", 1000000)
  darren = Manager.new("Darren", "TA Manager", 78000, ned)
  shawna = Employee.new("Shawn", "TA", 12000, darren)
  david = Employee.new("David", "Founder", 10000, darren)
  p ned.bonus(5) # => 500_000
  p darren.bonus(4) # => 88_000
  p david.bonus(3) # => 30_000
end
