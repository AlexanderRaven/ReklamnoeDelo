require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  describe "GET #admin_main" do
    it "returns http success" do
      get :admin_main
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #configurations" do
    it "returns http success" do
      get :configurations
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #blog_changer" do
    it "returns http success" do
      get :blog_changer
      expect(response).to have_http_status(:success)
    end
  end

end
