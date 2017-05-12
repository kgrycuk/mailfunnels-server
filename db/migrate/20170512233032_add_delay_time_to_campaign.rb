class AddDelayTimeToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :delayTime, :integer
  end
end
