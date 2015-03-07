require "rails_helper"

RSpec.describe Cpanel::SlidesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cpanel/slides").to route_to("cpanel/slides#index")
    end

    it "routes to #new" do
      expect(:get => "/cpanel/slides/new").to route_to("cpanel/slides#new")
    end

    it "routes to #show" do
      expect(:get => "/cpanel/slides/1").to route_to("cpanel/slides#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cpanel/slides/1/edit").to route_to("cpanel/slides#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cpanel/slides").to route_to("cpanel/slides#create")
    end

    it "routes to #update" do
      expect(:put => "/cpanel/slides/1").to route_to("cpanel/slides#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cpanel/slides/1").to route_to("cpanel/slides#destroy", :id => "1")
    end

  end
end
