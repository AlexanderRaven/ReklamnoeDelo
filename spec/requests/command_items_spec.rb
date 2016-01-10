require 'rails_helper'

RSpec.describe "CommandItems", type: :request do
  describe "GET /command_items" do
    it "works! (now write some real specs)" do
      get command_items_path
      expect(response).to have_http_status(200)
    end
  end
end
