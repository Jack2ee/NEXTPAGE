class HomeController < ApplicationController
  def index
  end

  def contact
  end
  
  def intro
  end

  def activity
  end
  def create
    @post=Post.new
    @post.title=params[:title]
    @post.content=params[:content]
    @post.save
    redirect_to '/'
  end
  def new 
  end
end
