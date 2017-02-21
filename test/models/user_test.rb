require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "User Name and email must not be empty" do
  user = User.new
  assert user.invalid?
  assert user.errors[:Name].any?
  assert user.errors[:email].any?
  end

  def new_user(image_url)
    user = User.new
    user.Name="Ken Corwell"
    user.email="KCorn@gmail.com"
    user.user_foto=image_url
    return user
  end

  test "User_foto" do
    # url изображения
    ok = %w{1.jpg test.png test2.gif http://a.b.c/x/y/z/fred.gif }
    bad = %w{3.jjj test.jpg.more rest.png/more tt.pn}
    #должно быть приемлимым
    ok.each do |image|
      assert new_user(image).valid?, "#{image} should not be invalid "
    end
    #не должно быть приемлимым
    bad.each do |image|
      assert new_user(image).invalid?, "#{image} should be invalid"
    end

  end

  test "User email must be unique" do
    user = User.new(Name: "New User", email: users(:admin).email)
    assert user.invalid?
    #assert_equal [I18n.translate('activerecord.errors.messages.taken')], product.errors[:title]
    assert_equal ["уже существует"], user.errors[:email]
  end
end
