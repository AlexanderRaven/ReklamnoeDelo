class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.text :message

      t.timestamps
    end
  end
end
