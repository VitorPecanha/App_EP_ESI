require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      user_email: "MyString",
      user_first_name: "MyString",
      user_last_name: "MyString",
      user_cpf: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[user_email]"

      assert_select "input[name=?]", "user[user_first_name]"

      assert_select "input[name=?]", "user[user_last_name]"

      assert_select "input[name=?]", "user[user_cpf]"
    end
  end
end
