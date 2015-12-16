json.array!(@blog_articles) do |blog_article|
  json.extract! blog_article, :id, :Title, :Body
  json.url blog_article_url(blog_article, format: :json)
end
