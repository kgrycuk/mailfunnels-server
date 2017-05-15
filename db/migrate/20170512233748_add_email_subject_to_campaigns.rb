class AddEmailSubjectToCampaigns < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :emailSubject, :string
  end
end
