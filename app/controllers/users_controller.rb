class UsersController < ApplicationController
  before_action :user_admin, only: [:index, :edit]
  before_action :user_show, only: :show
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @lessons = Lesson.all
  end

  def edit
    @user = User.find(params[:id])
  end
  
  private

  def user_admin
    unless current_user.admin == true
      redirect_to root_path
    end
  end

  def user_show
    @user = User.find(params[:id])
    unless current_user.admin == true || @user.id == current_user.id
      redirect_to root_path
    end
  end
end
