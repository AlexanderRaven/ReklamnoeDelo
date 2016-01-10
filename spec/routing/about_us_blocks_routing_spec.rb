require "rails_helper"

RSpec.describe AboutUsBlocksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/about_us_blocks").to route_to("about_us_blocks#index")
    end

    it "routes to #new" do
      expect(:get => "/about_us_blocks/new").to route_to("about_us_blocks#new")
    end

    it "routes to #show" do
      expect(:get => "/about_us_blocks/1").to route_to("about_us_blocks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/about_us_blocks/1/edit").to route_to("about_us_blocks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/about_us_blocks").to route_to("about_us_blocks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/about_us_blocks/1").to route_to("about_us_blocks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/about_us_blocks/1").to route_to("about_us_blocks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/about_us_blocks/1").to route_to("about_us_blocks#destroy", :id => "1")
    end

  end
end
