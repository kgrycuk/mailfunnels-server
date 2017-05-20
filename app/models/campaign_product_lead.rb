class CampaignProductLead < ApplicationRecord
  belongs_to :app
  belongs_to :EmailList
  belongs_to :email
end
