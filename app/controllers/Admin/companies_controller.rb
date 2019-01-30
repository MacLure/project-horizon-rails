class Admin::CompaniesController < ApplicationController
  before_action :authenticate_admin
  def index
      @company = Company.all
      render json: @company
    end

    def create
      company = JSON.parse(params['company'])
      company = Company.create(company)
      render json: company
    end

    def show
    render json: @company
  end

  def update
    if @company.update(company_params)
      render json: @company
    else
      render json: { message: @company.errors }, status: 400
    end
  end

  def destroy
    if @company.destroy
      render json: { message: "Successfully removed company." }, status: 204
    else
      render json: { message: "Unable to remove company" }, status: 400
    end
  end

    private

    def company_params
      params.require(:company).permit( :phone, :address, :website, :name )
    end
end
