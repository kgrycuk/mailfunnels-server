class EmailList < ApplicationRecord
	validates :name, presence: true

	belongs_to :app
	has_many :emails
end
