require 'rails_helper'

RSpec.describe "affiliates/new", :type => :view do
  before(:each) do
    assign(:affiliate, Affiliate.new(
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new affiliate form" do
    render

    assert_select "form[action=?][method=?]", affiliates_path, "post" do

      assert_select "input#affiliate_title[name=?]", "affiliate[title]"

      assert_select "input#affiliate_content[name=?]", "affiliate[content]"
    end
  end
end
