require "rails_helper"

RSpec.describe NewItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/new_items").to route_to("new_items#index")
    end

    it "routes to #new" do
      expect(:get => "/new_items/new").to route_to("new_items#new")
    end

    it "routes to #show" do
      expect(:get => "/new_items/1").to route_to("new_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/new_items/1/edit").to route_to("new_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/new_items").to route_to("new_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/new_items/1").to route_to("new_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/new_items/1").to route_to("new_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/new_items/1").to route_to("new_items#destroy", :id => "1")
    end

  end
end
