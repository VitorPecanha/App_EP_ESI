require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      user_email: "User Email",
      user_first_name: "User First Name",
      user_last_name: "User Last Name",
      user_cpf: "User Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Email/)
    expect(rendered).to match(/User First Name/)
    expect(rendered).to match(/User Last Name/)
    expect(rendered).to match(/User Cpf/)
  end
end
