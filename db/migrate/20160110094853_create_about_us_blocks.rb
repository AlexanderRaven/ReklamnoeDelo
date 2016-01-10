class CreateAboutUsBlocks < ActiveRecord::Migration
  def change
    create_table :about_us_blocks do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
