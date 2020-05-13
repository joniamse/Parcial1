class CreateMemberHonors < ActiveRecord::Migration[6.0]
  def change
    create_table :member_honors do |t|

      t.timestamps
    end
  end
end
