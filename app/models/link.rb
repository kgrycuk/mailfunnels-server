class Link < ApplicationRecord

  belongs_to :funnel, :class_name => 'Funnel', :foreign_key => 'funnel_id'

  belongs_to :from_node, :class_name => 'Node', :foreign_key => 'fni'
  belongs_to :to_node, :class_name => 'Node', :foreign_key => 'tni'

end
