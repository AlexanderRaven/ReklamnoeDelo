require 'rails_helper'

RSpec.describe "about_us_blocks/index", type: :view do
  before(:each) do
    assign(:about_us_blocks, [
      AboutUsBlock.create!(
        :header => "Header",
        :body => "MyText"
      ),
      AboutUsBlock.create!(
        :header => "Header",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of about_us_blocks" do
    render
    assert_select "tr>td", :text => "Header".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
