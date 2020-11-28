class CreateLessonUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_users do |t|
      t.boolean    :lesson_check,       default: false
      t.timestamps
    end
  end
end
