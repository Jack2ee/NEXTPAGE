class HomeController < ApplicationController
  def index
  end
<<<<<<< HEAD
=======

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

  def members_lounge
    @posts=Post.all
    
    
  end

>>>>>>> e02ea04f6731c624e3ab7c6055902494e904ccca
end
