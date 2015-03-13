require 'rails_helper'

RSpec.describe "cpanel/slides/new", :type => :view do
  before(:each) do
    assign(:cpanel_slide, Cpanel::Slide.new(
      :title => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders new cpanel_slide form" do
    render

    assert_select "form[action=?][method=?]", cpanel_slides_path, "post" do

      assert_select "input#cpanel_slide_title[name=?]", "cpanel_slide[title]"

      assert_select "input#cpanel_slide_image_url[name=?]", "cpanel_slide[image_url]"
    end
  end
end
