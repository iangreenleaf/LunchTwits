require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#find_or_create_from_auth_hash creates model" do
    u = User.find_or_create_from_auth_hash(
      "provider" => "stocktwits",
      "uid" => "12345",
      "info" => { "name" => "Gordon Freeman", "nickname" => "freeman" },
      "credentials" => { "token" => "DEADBEEF" },
    )
    assert_equal "stocktwits", u.provider
    assert_equal "12345", u.uid
    assert_equal "freeman", u.username
    assert_equal "DEADBEEF", u.token
  end

  test "#find_or_create_from_auth_hash uses existing model" do
    u = User.new uid: 54321, username: "garrett"
    u.save!
    assert_equal u, User.find_or_create_from_auth_hash(
      "provider" => "stocktwits",
      "uid" => "54321",
      "info" => { "name" => "Garrett", "nickname" => "garrett" },
      "credentials" => { "token" => "DEADBEEF" },
    )
  end
end
