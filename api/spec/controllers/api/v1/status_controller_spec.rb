require 'rails_helper'

RSpec.describe Api::V1::StatusController, type: :controller do
  describe "GET #heartbeat" do
    it "returns success" do
      get :heartbeat
      expect(response).to have_http_status(:success)
      expect(JSON.load(response.body)).to eq("status" => "ok")
    end
  end
end
