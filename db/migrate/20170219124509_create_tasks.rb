class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.string :name
      t.string :status
      t.belongs_to :user, index: true, foreign_key: true
      t.decimal :priority

      t.timestamps null: false
    end
  end
end
