class NodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :top, :left, :hits, :uhits, :nemails, :nesent, :funnel_id, :trigger_id
end
