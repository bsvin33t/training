require 'rails_helper'

RSpec.describe AdsController, :type => :controller do
  describe "show" do
    it "should fetch the details about the ad for the ad id passed" do
      ad = Ad.create(name: "name", description: "description", price: 20, seller_id: 10, email: "user@example.com", img_url: "url")
      get :show, {id: ad.id}
      expect(response).to render_template("show")
      expect(assigns(:ad)).to eq(Ad.last)
    end
  end

  describe "index" do
    it "should list all the ads in the system" do
      10.times do |index|
        Ad.create(name: "name_#{index}", description: "description", price: 20, seller_id: 10, email: "user@example.com", img_url: "url")
      end

      get :index

      expect(response).to render_template("index")

      expect(assigns(:ads)).to eq(Ad.all)
    end
  end
end
