class CreateEmailMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :email_messages do |t|
      t.string :subject
      t.string :content
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
