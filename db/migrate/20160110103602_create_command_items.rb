class CreateCommandItems < ActiveRecord::Migration
  def change
    create_table :command_items do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
