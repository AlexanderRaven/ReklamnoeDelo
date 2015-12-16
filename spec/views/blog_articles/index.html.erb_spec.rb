require 'rails_helper'

RSpec.describe "blog_articles/index", type: :view do
  before(:each) do
    assign(:blog_articles, [
      BlogArticle.create!(
        :Title => "Title",
        :Body => "MyText"
      ),
      BlogArticle.create!(
        :Title => "Title",
        :Body => "MyText"
      )
    ])
  end

  it "renders a list of blog_articles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
