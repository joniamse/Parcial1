class Unit < ApplicationRecord
	has_many :members

	validates :name, presence: true
	validate :MembersCal

	def MembersCal
        count = 0;
        for m in Member.all
            if (m.unit.id == self.id) 
                count = count + 1
            end

        end
        count
    end
end
