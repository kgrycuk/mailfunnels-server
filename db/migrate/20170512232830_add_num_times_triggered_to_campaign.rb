class AddNumTimesTriggeredToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :numTimesTriggered, :integer
  end
end
