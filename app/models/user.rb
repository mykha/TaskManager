class User < ActiveRecord::Base
  validates :Name, :email, presence: true
  validates :email, uniqueness: true,  format:  {
     with: /.+@.+\..+/i
  }
end
