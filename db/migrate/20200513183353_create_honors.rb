class CreateHonors < ActiveRecord::Migration[6.0]
  def change
    create_table :honors do |t|
      t.string :name
      t.string :image_url
      t.text :requirements

      t.timestamps
    end
  end
end
