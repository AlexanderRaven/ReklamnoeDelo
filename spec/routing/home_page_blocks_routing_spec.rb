require "rails_helper"

RSpec.describe HomePageBlocksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/home_page_blocks").to route_to("home_page_blocks#index")
    end

    it "routes to #new" do
      expect(:get => "/home_page_blocks/new").to route_to("home_page_blocks#new")
    end

    it "routes to #show" do
      expect(:get => "/home_page_blocks/1").to route_to("home_page_blocks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/home_page_blocks/1/edit").to route_to("home_page_blocks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/home_page_blocks").to route_to("home_page_blocks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/home_page_blocks/1").to route_to("home_page_blocks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/home_page_blocks/1").to route_to("home_page_blocks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/home_page_blocks/1").to route_to("home_page_blocks#destroy", :id => "1")
    end

  end
end
