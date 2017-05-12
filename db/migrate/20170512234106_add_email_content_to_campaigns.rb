class AddEmailContentToCampaigns < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :emailContent, :string
  end
end
