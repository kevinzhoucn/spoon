require 'rails_helper'

RSpec.describe "enquiries/new", :type => :view do
  before(:each) do
    assign(:enquiry, Enquiry.new(
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :message => "MyString"
    ))
  end

  it "renders new enquiry form" do
    render

    assert_select "form[action=?][method=?]", enquiries_path, "post" do

      assert_select "input#enquiry_name[name=?]", "enquiry[name]"

      assert_select "input#enquiry_phone[name=?]", "enquiry[phone]"

      assert_select "input#enquiry_email[name=?]", "enquiry[email]"

      assert_select "input#enquiry_message[name=?]", "enquiry[message]"
    end
  end
end
