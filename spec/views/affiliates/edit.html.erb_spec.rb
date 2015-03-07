require 'rails_helper'

RSpec.describe "affiliates/edit", :type => :view do
  before(:each) do
    @affiliate = assign(:affiliate, Affiliate.create!(
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit affiliate form" do
    render

    assert_select "form[action=?][method=?]", affiliate_path(@affiliate), "post" do

      assert_select "input#affiliate_title[name=?]", "affiliate[title]"

      assert_select "input#affiliate_content[name=?]", "affiliate[content]"
    end
  end
end
