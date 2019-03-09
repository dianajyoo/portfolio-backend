module Api
  module V1
    class ContactsController < ApplicationController

      def new
        @contact = Contact.new
      end

      def create
        @contact = Contact.new(params[:contact][:data])
        name = params[:contact][:data][:name]
        @contact.request = request

        if @contact.deliver
          render json: {message: "Successfully sent!"}
        else
          render json: {message: "Error"}
        end
      end

    end
  end
end
