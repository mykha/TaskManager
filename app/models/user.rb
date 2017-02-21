class User < ActiveRecord::Base
  validates :Name, :email, presence: true
  validates :email, uniqueness: true, allow_blank: true,  format:  {
     with: /[A-Z0-9a-z_]+@.+\.+[A-Z0-9a-z_]{3}/i
  }
  validates :user_foto, allow_blank: true, format: {
      with: %r{\.(png|jpg|gif)\Z}i,
      massage: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
  }
  has_many :projects
  has_many :tasks

end
