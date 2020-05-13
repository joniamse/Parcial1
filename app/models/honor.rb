class Honor < ApplicationRecord
	belongs_to :category
	has_and_belongs_to_many :member_honors

	validates :name, presence: true
end
