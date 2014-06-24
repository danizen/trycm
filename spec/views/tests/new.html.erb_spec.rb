require 'rails_helper'

RSpec.describe "tests/new", :type => :view do
  before(:each) do
    assign(:test, Test.new(
      :name => "MyString",
      :xslt => "MyText",
      :output => "MyText"
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input#test_name[name=?]", "test[name]"

      assert_select "textarea#test_xslt[name=?]", "test[xslt]"

      assert_select "textarea#test_output[name=?]", "test[output]"
    end
  end
end
