require 'rails_helper'

RSpec.describe "cpanel/slides/edit", :type => :view do
  before(:each) do
    @cpanel_slide = assign(:cpanel_slide, Cpanel::Slide.create!(
      :title => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders the edit cpanel_slide form" do
    render

    assert_select "form[action=?][method=?]", cpanel_slide_path(@cpanel_slide), "post" do

      assert_select "input#cpanel_slide_title[name=?]", "cpanel_slide[title]"

      assert_select "input#cpanel_slide_image_url[name=?]", "cpanel_slide[image_url]"
    end
  end
end
