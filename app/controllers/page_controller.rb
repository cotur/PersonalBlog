class PageController < ApplicationController
  def home
  end
  def keyword
    @posts = Post.where("keywords LIKE ?","%#{params[:q]}%")
  end
end
