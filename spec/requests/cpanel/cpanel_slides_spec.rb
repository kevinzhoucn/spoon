require 'rails_helper'

RSpec.describe "Cpanel::Slides", :type => :request do
  describe "GET /cpanel_slides" do
    it "works! (now write some real specs)" do
      get cpanel_slides_path
      expect(response).to have_http_status(200)
    end
  end
end
