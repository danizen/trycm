require 'rails_helper'

RSpec.describe "xml_tests/show", :type => :view do
  before(:each) do
    @xml_test = assign(:xml_test, XmlTest.create!(
      :name => "Name",
      :xslt => "MyText",
      :output => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
