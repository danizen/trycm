require "rails_helper"

RSpec.describe XmlTestsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/xml_tests").to route_to("xml_tests#index")
    end

    it "routes to #new" do
      expect(:get => "/xml_tests/new").to route_to("xml_tests#new")
    end

    it "routes to #show" do
      expect(:get => "/xml_tests/1").to route_to("xml_tests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/xml_tests/1/edit").to route_to("xml_tests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/xml_tests").to route_to("xml_tests#create")
    end

    it "routes to #update" do
      expect(:put => "/xml_tests/1").to route_to("xml_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/xml_tests/1").to route_to("xml_tests#destroy", :id => "1")
    end

  end
end
