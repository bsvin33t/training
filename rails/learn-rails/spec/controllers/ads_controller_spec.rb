require 'rails_helper'

RSpec.describe AdsController, :type => :controller do
  describe "show" do
    it "should fetch the details about the ad for the ad id passed" do
      ad = Ad.create(name:"name", description: "description", price: 20,seller_id: 10, email: "user@example.com", img_url: "url")
      get :show, {id: ad.id}
      expect(response).to render_template("show")
      expect(assigns(:ad)).to eq(Ad.find(ad.id))
    end
  end
end
