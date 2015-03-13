require 'rails_helper'

RSpec.describe "affiliates/show", :type => :view do
  before(:each) do
    @affiliate = assign(:affiliate, Affiliate.create!(
      :title => "Title",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
  end
end
