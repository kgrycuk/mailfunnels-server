class NodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :top, :left, :num_emails, :num_emails_sent, :num_revenue, :delay_time, :funnel_id, :email_template_id
end
