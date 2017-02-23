require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'

require_relative 'department'

class DepartmentTest < Minitest::Test
  def test_department_exists
    assert Department
  end

  def test_department_is_working
    new_department = Department.new("Accounting")
    assert_equal "Accounting", new_department.name
  end
end
