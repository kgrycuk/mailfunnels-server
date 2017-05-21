class EmailJobSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :name, :executed, :execute_time, :hook_identifier, :execute_frequency, :queue_identifier, :execute_set_time, :execute_date
end
