class Trigger < ApplicationRecord
  validates :name, presence: true

  belongs_to :app

end
