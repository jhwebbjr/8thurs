require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'

require_relative 'employee'

class EmployeeTest < Minitest::Test
  def test_employee_exists
    assert Employee
  end

  def test_employee_is_working
    new_employee = Employee.new("Beyonce Knowles", "bey@thehive.com", 7779311, 50000000)
    assert_equal "Beyonce Knowles", new_employee.name
  end

  def test_email_is_working
    new_employee = Employee.new("Beyonce Knowles", "bey@thehive.com", 7779311, 50000000)
    assert_equal "bey@thehive.com", new_employee.email
  end

  def test_phone_is_working
    new_employee = Employee.new("Beyonce Knowles", "bey@thehive.com", 7779311, 50000000)
    assert_equal 7779311, new_employee.phone
  end

  def test_salary_is_working
    new_employee = Employee.new("Beyonce Knowles", "bey@thehive.com", 7779311, 50000000)
    assert_equal 50000000, new_employee.salary
  end
end
