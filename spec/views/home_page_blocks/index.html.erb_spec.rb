require 'rails_helper'

RSpec.describe "home_page_blocks/index", type: :view do
  before(:each) do
    assign(:home_page_blocks, [
      HomePageBlock.create!(
        :header => "Header",
        :body => "MyText"
      ),
      HomePageBlock.create!(
        :header => "Header",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of home_page_blocks" do
    render
    assert_select "tr>td", :text => "Header".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
