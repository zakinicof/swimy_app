class LessonsController < ApplicationController

  def index
    @user = User.find(current_user.id)
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

  def show
    # ユーザーの情報を取得
    @user = User.find(params[:user_id])
    # レッスンの情報を取得
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
    # 取得したレッスンの評価項目を取得
    @items = EvaluationItem.where(lesson_id: @lesson.id)
    # 評価項目から番号のカラムを取得
    @progresses = []
    @items.each do |item|
      achieve = LessonUser.find_by(user_id: @user.id, lesson_id: @lesson.id, evaluation_item_id: item.id)
      if achieve == nil
        progress = [item.item_number , 0]
      else
        progress = [item.item_number , 100]
      end
      @progresses << progress
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
    @evaluation_item = EvaluationItem.find(params[:id])
    @lesson.lesson_users
    item_count = EvaluationItem.where(lesson_id: @lesson.id).count
    achieve_count = LessonUser.where(user_id: @user.id, lesson_id: @lesson.id, lesson_check: 1).count
    achieve = achieve_count.to_f / item_count * 100
    not_achieve = 100 - achieve
    @progress = {'達成' => achieve.round(0), '未達成' => not_achieve.round(0)}
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

    flash[:notice] = "更新しました。"
    redirect_to "/users/#{params[:user_id]}/lessons/#{params[:lesson_id]}/edit"
    
    LessonUser.where(lesson_check: false).destroy_all
  end

  private

  def lesson_params
    params.permit(:user_id, :lesson_id, :evaluation_item_id)
  end
end
