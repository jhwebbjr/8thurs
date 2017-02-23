require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require 'minitest/focus'    # => true

require_relative 'department'  # => true
require_relative 'employee'    # => true

class DepartmentTest < Minitest::Test  # => Minitest::Test
  def test_department_exists
    assert Department                  # => true
  end                                  # => :test_department_exists

  def test_department_is_working
    new_department = Department.new("Accounting")   # => #<Department:0x007fdfc8879358 @name="Accounting", @employees=[]>
    assert_equal "Accounting", new_department.name  # => true
  end                                               # => :test_department_is_working

  def test_total_employees
    accounting = Department.new("Accounting")                               # => #<Department:0x007fdfc8878ca0 @name="Accounting", @employees=[]>
    shawn = Employee.new("Shawn Carter", "sdot@hova.com", 9991234, 100000)  # => #<Employee:0x007fdfc88789f8 @name="Shawn Carter", @email="sdot@hova.com", @phone=9991234, @salary=100000>
    assert_equal [], accounting.employees                                   # => true
  end                                                                       # => :test_total_employees

  def test_add_employees_to_department
    accounting = Department.new("Accounting")                               # => #<Department:0x007fdfc887a6e0 @name="Accounting", @employees=[]>
    shawn = Employee.new("Shawn Carter", "sdot@hova.com", 9991234, 100000)  # => #<Employee:0x007fdfc887a398 @name="Shawn Carter", @email="sdot@hova.com", @phone=9991234, @salary=100000>
    assert_equal [], accounting.employees                                   # => true
    accounting.add_employee(shawn)                                          # => [#<Employee:0x007fdfc887a398 @name="Shawn Carter", @email="sdot@hova.com", @phone=9991234, @salary=100000>]
    assert_equal [shawn], accounting.employees                              # => true
  end                                                                       # => :test_add_employees_to_department
end                                                                         # => :test_add_employees_to_department

# >> Run options: --seed 56738
# >>
# >> # Running:
# >>
# >> ....
# >>
# >> Finished in 0.001827s, 2189.3815 runs/s, 2736.7269 assertions/s.
# >>
# >> 4 runs, 5 assertions, 0 failures, 0 errors, 0 skips
