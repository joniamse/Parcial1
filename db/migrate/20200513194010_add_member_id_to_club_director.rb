class AddMemberIdToClubDirector < ActiveRecord::Migration[6.0]
  def change
    add_reference :club_directors, :member, null: false, foreign_key: true
  end
end
