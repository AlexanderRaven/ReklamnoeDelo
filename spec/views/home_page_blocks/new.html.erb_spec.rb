require 'rails_helper'

RSpec.describe "home_page_blocks/new", type: :view do
  before(:each) do
    assign(:home_page_block, HomePageBlock.new(
      :header => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new home_page_block form" do
    render

    assert_select "form[action=?][method=?]", home_page_blocks_path, "post" do

      assert_select "input#home_page_block_header[name=?]", "home_page_block[header]"

      assert_select "textarea#home_page_block_body[name=?]", "home_page_block[body]"
    end
  end
end
