require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      user_email: "MyString",
      user_first_name: "MyString",
      user_last_name: "MyString",
      user_cpf: "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[user_email]"

      assert_select "input[name=?]", "user[user_first_name]"

      assert_select "input[name=?]", "user[user_last_name]"

      assert_select "input[name=?]", "user[user_cpf]"
    end
  end
end
