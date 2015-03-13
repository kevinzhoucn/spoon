require 'rails_helper'

RSpec.describe "positions/new", :type => :view do
  before(:each) do
    assign(:position, Position.new(
      :title => "MyString",
      :content => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do

      assert_select "input#position_title[name=?]", "position[title]"

      assert_select "input#position_content[name=?]", "position[content]"

      assert_select "input#position_status[name=?]", "position[status]"
    end
  end
end
