class CreateBlogArticles < ActiveRecord::Migration
  def change
    create_table :blog_articles do |t|
      t.string :Title
      t.text :Body
      

      t.timestamps
    end
  end
end
