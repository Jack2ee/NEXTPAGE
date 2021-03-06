class ContactsController < ApplicationController
  before_action :authenticate, only: [:index]
  before_action :authenticate_admin, only: [:index]
  
  def index
    @all_contacts = Contact.all
    @posts=Post.all
  end

  def new
  end

  def create
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]
    @image = params[:image]
    new_contact = Contact.new(name: @name, email: @email, content: @content, image: @image)
    if new_contact.save
      redirect_to contacts_path
    else
      redirect_to new_contact_path
    end
  end
end
