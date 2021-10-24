require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /admin" do
    it "returns http success" do
      get "/home/admin"
      expect(response).to have_http_status(:success)
    end
  end

end
