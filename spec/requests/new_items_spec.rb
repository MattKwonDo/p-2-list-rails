require 'rails_helper'

RSpec.describe "NewItems", type: :request do
  describe "GET /new_items" do
    it "works! (now write some real specs)" do
      get new_items_path
      expect(response).to have_http_status(200)
    end
  end
end
