require 'rails_helper'

RSpec.describe "blog_articles/edit", type: :view do
  before(:each) do
    @blog_article = assign(:blog_article, BlogArticle.create!(
      :Title => "MyString",
      :Body => "MyText"
    ))
  end

  it "renders the edit blog_article form" do
    render

    assert_select "form[action=?][method=?]", blog_article_path(@blog_article), "post" do

      assert_select "input#blog_article_Title[name=?]", "blog_article[Title]"

      assert_select "textarea#blog_article_Body[name=?]", "blog_article[Body]"
    end
  end
end
