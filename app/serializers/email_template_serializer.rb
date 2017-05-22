class EmailTemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :email_subject, :email_content
  has_one :app
end
