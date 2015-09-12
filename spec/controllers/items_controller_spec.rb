require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE destroy" do
    it "deletes the comment" do
      delete :destroy, post_id: my_post.id, id: my_comment.id
      delete :destroy, format: :js, post_id: my_post.id, id: my_comment.id
      count = Comment.where({id: my_comment.id}).count
      expect(count).to eq 0
    end

    it "redirects to the post show view" do
      delete :destroy, post_id: my_post.id, id: my_comment.id
      expect(response).to redirect_to [my_topic, my_post]

    it "returns http success" do
      delete :destroy, format: :js, post_id: my_post.id, id: my_comment.id
      expect(response).to have_http_status(:success)
    end
  end
end
end

