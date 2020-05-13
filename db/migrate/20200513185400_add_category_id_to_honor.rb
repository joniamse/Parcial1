class AddCategoryIdToHonor < ActiveRecord::Migration[6.0]
  def change
    add_reference :honors, :category, null: false, foreign_key: true
  end
end
