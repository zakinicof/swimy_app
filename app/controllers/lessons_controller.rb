class LessonsController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @lessons = Lesson.all
  end

  def new
    @evaluation_items = EvaluationItem.all
    @lesson_user = LessonUser.new
    @user = User.find(params[:user_id])
  end

  def create
    @lesson_user = LessonUser.new
    @lesson_user.each do |lesson|
      if lesson.save
        redirect_to root_path
      else
        render :new
      end
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @lesson = Lesson.find(params[:id])
    @evaluation_item = EvaluationItem.find(params[:id])
    # @lesson_user = LessonUser.where(user_id: @user.id, lesson_id: @lesson.id, evaluation_item_id: @evaluation_item.id)
    # binding.pry
  end

  def update
    lesson_params[:evaluation_item_id].each do |item_id|
      # @user = User.find(params[:user_id])
      # @lesson = Lesson.find(params[:id])
      # @evaluation_item = EvaluationItem.find(params[:id])
      # lesson_users = LessonUser.where(user_id: @user.id, lesson_id: @lesson.id)
      # lesson_users.each do |l|
      #   # binding.pry
      #   if l.evaluation_item_id == item_id.to_i
      #     :edit
      #   else
          lesson_user = LessonUser.new(user_id: lesson_params[:user_id], lesson_id: lesson_params[:id], evaluation_item_id: item_id)
          lesson_user.save
      #   end
      # end
    end
    redirect_to edit_user_lesson_path
  end

  private

  def lesson_params
    params.permit(:user_id, :id, evaluation_item_id: [])
  end
end
