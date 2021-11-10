require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        user_email: "User Email",
        user_first_name: "User First Name",
        user_last_name: "User Last Name",
        user_cpf: "User Cpf"
      ),
      User.create!(
        user_email: "User Email",
        user_first_name: "User First Name",
        user_last_name: "User Last Name",
        user_cpf: "User Cpf"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "User Email".to_s, count: 2
    assert_select "tr>td", text: "User First Name".to_s, count: 2
    assert_select "tr>td", text: "User Last Name".to_s, count: 2
    assert_select "tr>td", text: "User Cpf".to_s, count: 2
  end
end
