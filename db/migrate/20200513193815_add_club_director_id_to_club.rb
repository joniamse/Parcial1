class AddClubDirectorIdToClub < ActiveRecord::Migration[6.0]
  def change
    add_reference :clubs, :club_director, null: false, foreign_key: true
  end
end
