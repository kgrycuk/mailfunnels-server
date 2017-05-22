class EmailTemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :email_subject, :email_content, :app_id
  has_one :app
end
