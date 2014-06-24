require 'rails_helper'

RSpec.describe "tests/index", :type => :view do
  before(:each) do
    assign(:tests, [
      Test.create!(
        :name => "Name",
        :xslt => "MyText",
        :output => "MyText"
      ),
      Test.create!(
        :name => "Name",
        :xslt => "MyText",
        :output => "MyText"
      )
    ])
  end

  it "renders a list of tests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
