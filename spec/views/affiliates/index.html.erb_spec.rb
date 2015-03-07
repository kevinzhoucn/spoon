require 'rails_helper'

RSpec.describe "affiliates/index", :type => :view do
  before(:each) do
    assign(:affiliates, [
      Affiliate.create!(
        :title => "Title",
        :content => "Content"
      ),
      Affiliate.create!(
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of affiliates" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
