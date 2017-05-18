class AddHookIdToTriggers < ActiveRecord::Migration[5.0]
  def change
    add_column :triggers, :hook_id, :integer
  end
end
