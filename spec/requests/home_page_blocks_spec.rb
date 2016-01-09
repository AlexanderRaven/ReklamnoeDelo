require 'rails_helper'

RSpec.describe "HomePageBlocks", type: :request do
  describe "GET /home_page_blocks" do
    it "works! (now write some real specs)" do
      get home_page_blocks_path
      expect(response).to have_http_status(200)
    end
  end
end
