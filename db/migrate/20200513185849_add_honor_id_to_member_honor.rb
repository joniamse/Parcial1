class AddHonorIdToMemberHonor < ActiveRecord::Migration[6.0]
  def change
    add_reference :member_honors, :honor, null: false, foreign_key: true
  end
end
