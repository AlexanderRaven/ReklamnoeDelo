require 'rails_helper'

RSpec.describe "blog_articles/new", type: :view do
  before(:each) do
    assign(:blog_article, BlogArticle.new(
      :Title => "MyString",
      :Body => "MyText"
    ))
  end

  it "renders new blog_article form" do
    render

    assert_select "form[action=?][method=?]", blog_articles_path, "post" do

      assert_select "input#blog_article_Title[name=?]", "blog_article[Title]"

      assert_select "textarea#blog_article_Body[name=?]", "blog_article[Body]"
    end
  end
end
