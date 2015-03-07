require 'rails_helper'

RSpec.describe "cpanel/slides/index", :type => :view do
  before(:each) do
    assign(:cpanel_slides, [
      Cpanel::Slide.create!(
        :title => "Title",
        :image_url => "Image Url"
      ),
      Cpanel::Slide.create!(
        :title => "Title",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of cpanel/slides" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
