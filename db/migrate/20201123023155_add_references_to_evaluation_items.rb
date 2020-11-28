class AddReferencesToEvaluationItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluation_items, :lesson, foreign_key: true
  end
end
