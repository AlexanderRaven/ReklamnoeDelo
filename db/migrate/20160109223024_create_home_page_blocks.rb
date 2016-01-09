class CreateHomePageBlocks < ActiveRecord::Migration
  def change
    create_table :home_page_blocks do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
