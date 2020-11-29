class CreateEvaluationItems < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluation_items do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
