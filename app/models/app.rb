class App < ApplicationRecord
	validates :name, presence: { strict: true }

	has_many :subscribers
	has_many :email_lists
	has_many :email_templates
	has_many :funnels
	has_many :triggers


end
