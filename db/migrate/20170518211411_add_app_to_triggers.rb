class AddAppToTriggers < ActiveRecord::Migration[5.0]
  def change
    add_reference :triggers, :app, foreign_key: true
  end
end
