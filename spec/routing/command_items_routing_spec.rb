require "rails_helper"

RSpec.describe CommandItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/command_items").to route_to("command_items#index")
    end

    it "routes to #new" do
      expect(:get => "/command_items/new").to route_to("command_items#new")
    end

    it "routes to #show" do
      expect(:get => "/command_items/1").to route_to("command_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/command_items/1/edit").to route_to("command_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/command_items").to route_to("command_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/command_items/1").to route_to("command_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/command_items/1").to route_to("command_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/command_items/1").to route_to("command_items#destroy", :id => "1")
    end

  end
end
