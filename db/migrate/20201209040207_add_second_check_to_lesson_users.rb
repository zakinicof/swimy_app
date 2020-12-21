class AddSecondCheckToLessonUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :lesson_users, :second_check, :boolean, default: false
  end
end
