class UsersController < ApplicationController
  before_action :user_admin, only: [:index, :edit]
  before_action :user_show, only: :show
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @lessons = Lesson.all
    @progresses = []
    @lessons.each do |lesson|
      item_count = EvaluationItem.where(lesson_id: lesson.id).count
      achieve_count = LessonUser.where(user_id: @user.id, lesson_id: lesson.id, lesson_check: 1).count
      achieve = achieve_count.to_f / item_count * 100
      not_achieve = 100 - achieve
      progress = {'達成' => achieve.round(0), '未達成' => not_achieve.round(0)}
      @progresses << progress
    end
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
