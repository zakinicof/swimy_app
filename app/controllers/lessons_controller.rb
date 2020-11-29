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
    @lesson.lesson_users
  end

  def update
    # asdf

    @user = User.find(params[:user_id])
    @lesson = Lesson.find(params[:lesson_id])
    # 一度も編集したことがない場合、初期値を保存する
    EvaluationItem.where(lesson_id: @lesson.id).each do |evaluation_item|
      unless lesson_user = LessonUser.find_by(user_id: @user.id, lesson_id: @lesson.id, evaluation_item_id: evaluation_item.id)
        lesson_user = LessonUser.new(user_id: @user.id, lesson_id: @lesson.id, evaluation_item_id: evaluation_item.id, lesson_check: 0)
        lesson_user.save!
      else
        lesson_user.lesson_check = 0
        lesson_user.save!
      end
    end
    # formから送られてきたチェックボックスを取得
    if params[:lesson_check]
      params[:lesson_check].each do |item_id|
        if lesson_user = LessonUser.find_by(user_id: params[:user_id], lesson_id: params[:lesson_id], evaluation_item_id: item_id[0])
          # 更新
          lesson_user.lesson_check = item_id[1][0]
          lesson_user.save!
        else

        end
      end
    else

    end

    flash[:flash] = "更新しました。"
    redirect_to "/users/#{params[:user_id]}/lessons/#{params[:lesson_id]}/edit"
  end

  private

  def lesson_params
    params.permit(:user_id, :lesson_id, :evaluation_item_id)
  end
end
