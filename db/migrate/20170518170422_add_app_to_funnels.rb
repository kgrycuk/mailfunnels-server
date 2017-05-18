class AddAppToFunnels < ActiveRecord::Migration[5.0]
  def change
    add_reference :funnels, :app, foreign_key: true
  end
end
