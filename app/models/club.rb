class Club < ApplicationRecord
	belongs_to :club_director

	validates :name, presence: true
end
