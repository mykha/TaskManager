class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :user
  has_many :tasks, dependent: :destroy
end
