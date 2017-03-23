class AddTaskNumber < ActiveRecord::Migration
  def change
    add_column :tasks, :number, :integer
    max_number = 0
    Task.all.each do |task|
      max_number+=1
      task.number=max_number
    end
  end
end
