class CreateClubDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :club_directors do |t|

      t.timestamps
    end
  end
end
