class AddNumEmailsSentToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :numEmailsSent, :integer
  end
end
