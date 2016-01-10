require 'rails_helper'

RSpec.describe "about_us_blocks/show", type: :view do
  before(:each) do
    @about_us_block = assign(:about_us_block, AboutUsBlock.create!(
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
