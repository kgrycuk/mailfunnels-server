class EmailJob < ApplicationRecord

  belongs_to :apps
  has_one :hooks
  belongs_to :trigger

end
