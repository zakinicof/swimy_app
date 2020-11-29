class CreateLessonUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_users do |t|
      t.references :user, foreign: true
      t.references :lesson, foreign: true
      t.references :evaluation_item, foreign: true
      t.boolean    :lesson_check,       default: false
      t.timestamps
    end
  end
end
