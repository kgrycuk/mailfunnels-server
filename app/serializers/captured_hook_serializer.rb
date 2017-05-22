class CapturedHookSerializer < ActiveModel::Serializer
  attributes :id
  has_one :hook
  has_one :subscriber
  has_one :app
end
