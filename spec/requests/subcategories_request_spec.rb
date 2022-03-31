require 'rails_helper'

RSpec.describe "Subcategories", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/subcategories/show"
      expect(response).to have_http_status(:success)
    end
  end

end
