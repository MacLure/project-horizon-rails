class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin
  def index
      @contact = Contact.all
      render json: @contact
    end

    def create
      contact = JSON.parse(params['contact'])
      contact = Contact.create(contact)
      render json: contact
    end

    def show
    render json: @contact
  end

  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: { message: @contact.errors }, status: 400
    end
  end

  def destroy
    if @contact.destroy
      render json: { message: "Successfully removed contact." }, status: 204
    else
      render json: { message: "Unable to remove contact" }, status: 400
    end
  end

    private

    def contact_params
      params.require(:contact).permit( :first_name, :last_name, :phone, :email, :title)
    end

end
