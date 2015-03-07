require 'rails_helper'

RSpec.describe "courses/index", :type => :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :title => "Title",
        :content => "Content"
      ),
      Course.create!(
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
