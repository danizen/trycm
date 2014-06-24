require 'rails_helper'

RSpec.describe "XmlTests", :type => :request do
  describe "GET /xml_tests" do
    it "works! (now write some real specs)" do
      get xml_tests_path
      expect(response.status).to be(200)
    end
  end
end
