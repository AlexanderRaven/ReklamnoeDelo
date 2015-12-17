class AddShortToBlogArticles < ActiveRecord::Migration
  def change
    add_column :blog_articles, :short, :text
  end
end
