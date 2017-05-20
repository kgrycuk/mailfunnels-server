class App < ApplicationRecord
	validates :name, presence: { strict: true }

	has_many :emails
	has_many :email_lists
	has_many :funnels
	has_many :triggers

end
