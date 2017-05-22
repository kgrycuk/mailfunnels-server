class SubscriberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :app_id
  has_one :app
end
