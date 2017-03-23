require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Project name must not be empty" do
    pro = Project.new
    assert pro.invalid?
    assert pro.errors[:name].any?
  end

  test "Project name must be uniq" do
    pro = Project.new(name: projects(:one).name)
    assert pro.invalid?
    assert_equal ["уже существует"], pro.errors[:name]
  end
end
