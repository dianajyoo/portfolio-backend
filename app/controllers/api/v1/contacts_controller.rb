module Api
  module V1
    class ContactsController < ApplicationController

      def new
        @contact = Contact.new
      end

      def create
        @contact = Contact.new(params[:contact])
        @contact.request = request

        if @contact.deliver
          render json: {message: "Successfully sent!"}
        else
          render json: {message: "Error occurred. Please try again!"}
        end
      end

    end
  end
end
