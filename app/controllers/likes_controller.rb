class LikesController < ApplicationController
  before_action :set_post

  def like
    like = Like.new(post_id: params[:post_id], user_id: current_user.id)
    like.save
  end

  def unlike
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    like.destroy
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

end
