require 'rails_helper'

RSpec.describe "resumes/index", :type => :view do
  before(:each) do
    assign(:resumes, [
      Resume.create!(
        :title => "Title",
        :content => "Content"
      ),
      Resume.create!(
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of resumes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
