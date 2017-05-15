class CreateFunnelModels < ActiveRecord::Migration[5.0]
  def change
    create_table :funnel_models do |t|
      t.string :name
      t.string :description
      t.datetime :dateCreated
      t.integer :numSubscribers
      t.integer :numTriggers
      t.float :numRevenue

      t.timestamps
    end
  end
end
