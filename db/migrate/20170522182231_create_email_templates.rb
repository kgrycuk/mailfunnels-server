class CreateEmailTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :email_templates do |t|
      t.string :name
      t.text :description
      t.string :email_subject
      t.text :email_content
      t.references :app, foreign_key: true

      t.timestamps
    end
  end
end
