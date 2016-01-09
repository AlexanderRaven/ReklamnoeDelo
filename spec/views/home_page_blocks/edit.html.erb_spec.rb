require 'rails_helper'

RSpec.describe "home_page_blocks/edit", type: :view do
  before(:each) do
    @home_page_block = assign(:home_page_block, HomePageBlock.create!(
      :header => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit home_page_block form" do
    render

    assert_select "form[action=?][method=?]", home_page_block_path(@home_page_block), "post" do

      assert_select "input#home_page_block_header[name=?]", "home_page_block[header]"

      assert_select "textarea#home_page_block_body[name=?]", "home_page_block[body]"
    end
  end
end
