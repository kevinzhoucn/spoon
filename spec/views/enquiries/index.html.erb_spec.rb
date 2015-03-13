require 'rails_helper'

RSpec.describe "enquiries/index", :type => :view do
  before(:each) do
    assign(:enquiries, [
      Enquiry.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :message => "Message"
      ),
      Enquiry.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :message => "Message"
      )
    ])
  end

  it "renders a list of enquiries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
