class CreateEmailJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :email_jobs do |t|
      t.string :subject
      t.text :content
      t.string :name
      t.boolean :executed
      t.integer :execute_time
      t.string :hook_identifier
      t.string :execute_frequency
      t.string :queue_identifier
      t.datetime :execute_set_time
      t.datetime :execute_date

      t.timestamps
    end
  end
end
