class ContactsController < ApplicationController

  def create
    @contact = Contact.new(params[:contact][:data])
    @name = params[:contact][:data][:name]
    @contact.request = request

    if @contact.deliver
      render json: {message: "Successfully sent!"}
    else
      render json: {message: "Error occurred. Please try again!"}
    end
  end

end
