class AddColumnToEvaluationItem < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluation_items, :item_number, :string
  end
end
