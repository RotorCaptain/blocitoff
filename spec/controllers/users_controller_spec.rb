require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  include Devise::TestHelpers

  describe "GET #show" do
    let(:user) { create(:user) }

    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "shows the current user profile" do
      sign_in user
      get :show
      expect(assigns(:user)).to eq subject.current_user
    end
  end

end
