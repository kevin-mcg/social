require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "saves with valid attributes" do
    user = User.new(
    email: "user@example.com",
    password: "password",
    password_confirmation: "password"
    )
    assert user.save
  end
end
