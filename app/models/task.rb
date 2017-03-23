class Task < ActiveRecord::Base
  validates :name, presence: true
  @@number = 0
  belongs_to :project
  belongs_to :user
  def self.initialize
    @@number = Task.maximum(:number)+1
  end
end
