require 'rails_helper'

RSpec.describe InvitationsController, :type => :controller do

  describe "GET hello" do
    it "returns http success" do
      get :hello
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

end
