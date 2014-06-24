require 'rails_helper'

RSpec.describe "xml_tests/index", :type => :view do
  before(:each) do
    assign(:xml_tests, [
      XmlTest.create!(
        :name => "Name",
        :xslt => "MyText",
        :output => "MyText"
      ),
      XmlTest.create!(
        :name => "Name",
        :xslt => "MyText",
        :output => "MyText"
      )
    ])
  end

  it "renders a list of xml_tests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
