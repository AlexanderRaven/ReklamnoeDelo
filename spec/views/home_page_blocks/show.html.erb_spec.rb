require 'rails_helper'

RSpec.describe "home_page_blocks/show", type: :view do
  before(:each) do
    @home_page_block = assign(:home_page_block, HomePageBlock.create!(
      :header => "Header",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Header/)
    expect(rendered).to match(/MyText/)
  end
end
