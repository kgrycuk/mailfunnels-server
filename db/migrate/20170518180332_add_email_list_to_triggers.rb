class AddEmailListToTriggers < ActiveRecord::Migration[5.0]
  def change
    add_reference :triggers, :email_list, foreign_key: true
  end
end
