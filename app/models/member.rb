class Member < ApplicationRecord
	has_one :club_director
	has_one :club, through: :club_director

	belongs_to :unit

	has_and_belongs_to_many :member_honors

	validates :first_name, :last_name, :document_number, :birth_date, presence: true
	validates :document_number, uniqueness: true
	validate :MemberHonors

	def MemberHonors
        list = []
        for h in MemberHonor.all
            if h.member_id == self.id
                list.push h
            end
        end
        puts list

    end
end
