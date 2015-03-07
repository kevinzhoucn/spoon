require 'rails_helper'

RSpec.describe "enquiries/show", :type => :view do
  before(:each) do
    @enquiry = assign(:enquiry, Enquiry.create!(
      :name => "Name",
      :phone => "Phone",
      :email => "Email",
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Message/)
  end
end
