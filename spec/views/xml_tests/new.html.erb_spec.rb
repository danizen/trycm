require 'rails_helper'

RSpec.describe "xml_tests/new", :type => :view do
  before(:each) do
    assign(:xml_test, XmlTest.new(
      :name => "MyString",
      :xslt => "MyText",
      :output => "MyText"
    ))
  end

  it "renders new xml_test form" do
    render

    assert_select "form[action=?][method=?]", xml_tests_path, "post" do

      assert_select "input#xml_test_name[name=?]", "xml_test[name]"

      assert_select "textarea#xml_test_xslt[name=?]", "xml_test[xslt]"

      assert_select "textarea#xml_test_output[name=?]", "xml_test[output]"
    end
  end
end
