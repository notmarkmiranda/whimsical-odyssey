require 'rails_helper'

RSpec.describe "User creation flow", type: :request do
  describe "GET /sign-up" do
    it "renders the sign-up page" do
      get "/sign-up"

      expect(response).to have_http_status(:success)
    end
  end
end
