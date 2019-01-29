class Admin::AdminsController < ApplicationController

  def find
    puts "Inside `find`"

  @admin = Admin.find_by(email: params[:admin][:email])
  if @admin
    render json: @admin
  else
    @errors = @admin.errors.full_messages
    render json: @errors
  end
 end

    def index

      @admins = Admin.all
      @cohorts = Cohort.all
      @students = Student.all

      render json: {admins: @admins, cohorts: @cohorts, students: @students}

    end

    def new
      @admin = Admin.new
    end

    def create
      @admin = Admin.new(admin_params)
      if @admin.valid? && @admin.save
        render json: @admin
      else
        render json: @admin.errors, status: 400
      end
    end

    def find
    @admin = Admin.find_by(email: params[:admin][:email])
    if @admin
      render json: @admin
    else
      @errors = @admin.errors.full_messages
      render json: @errors
    end
   end

    def show
      render json: @admin
    end

    def update
      if @admin.update(admin_params)
        render json: @admin
      end
    end

    def destroy
      Admin.destroy(params[:id])
    end

    private

    def set_user
      @user = User.find_by(id: params[:id])
    end

    def admin_params
      params.require(:admin).permit( :first_name, :last_name, :phone, :email, :password, :image_url, :company_id)
    end
end
