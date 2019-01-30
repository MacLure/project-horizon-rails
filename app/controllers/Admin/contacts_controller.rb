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
    @contact = Contact.find(JSON.parse(params['id']))
    @contact.update
  end

  def destroy
      @contact = Contact.find(JSON.parse(params['id']))
      @contact.destroy
  end

    private

    def contact_params
      params.require(:contact).permit( :first_name, :last_name, :phone, :email, :title)
    end

end
