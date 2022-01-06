class ManageUsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to manage_users_path, notice: 'User details are saved.'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to manage_users_path, notice: 'User details are updated.'
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to manage_users_path, notice: 'User is deleted.' if @user.destroy
  end

  def user_projects
   
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end
end