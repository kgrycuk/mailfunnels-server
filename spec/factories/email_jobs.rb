FactoryGirl.define do
  factory :email_job do
    subject "MyString"
    content "MyText"
    name "MyString"
    executed false
    execute_time 1
    hook_identifier "MyString"
    execute_frequency "MyString"
    queue_identifier "MyString"
    execute_set_time "2017-05-20 12:56:36"
    execute_date "2017-05-20 12:56:36"
  end
end
