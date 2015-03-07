require 'rails_helper'

RSpec.describe "cpanel/slides/show", :type => :view do
  before(:each) do
    @cpanel_slide = assign(:cpanel_slide, Cpanel::Slide.create!(
      :title => "Title",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Image Url/)
  end
end
