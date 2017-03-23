require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Task name must be empty" do
    task = Task.new
    assert task.invalid?
    assert task.errors[:name].any?
  end
end
