class ContactsController < ApplicationController
  def new
	  @contact = Contact.new
  end
  
  def show
	  @contact = Contact.find(params[:id])
  end
  
  def create
	  @contact = Contact.new(params[:contact])
	  if @contact.save
		  redirect_to @contact
	  else
		  render 'new'
	  end
  end
  
end
