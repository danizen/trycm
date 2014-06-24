require 'rails_helper'

RSpec.describe "xml_tests/edit", :type => :view do
  before(:each) do
    @xml_test = assign(:xml_test, XmlTest.create!(
      :name => "MyString",
      :xslt => "MyText",
      :output => "MyText"
    ))
  end

  it "renders the edit xml_test form" do
    render

    assert_select "form[action=?][method=?]", xml_test_path(@xml_test), "post" do

      assert_select "input#xml_test_name[name=?]", "xml_test[name]"

      assert_select "textarea#xml_test_xslt[name=?]", "xml_test[xslt]"

      assert_select "textarea#xml_test_output[name=?]", "xml_test[output]"
    end
  end
end
