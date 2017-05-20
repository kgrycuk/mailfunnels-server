class Node < ApplicationRecord

  belongs_to :funnel ,:class_name => 'Funnel', :foreign_key => 'funnel_id'
  belongs_to :trigger, :class_name => 'Trigger', :foreign_key => 'trigger_id'

  has_many :links

end
