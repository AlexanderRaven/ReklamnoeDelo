require 'rails_helper'

RSpec.describe "about_us_blocks/new", type: :view do
  before(:each) do
    assign(:about_us_block, AboutUsBlock.new(
      :header => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new about_us_block form" do
    render

    assert_select "form[action=?][method=?]", about_us_blocks_path, "post" do

      assert_select "input#about_us_block_header[name=?]", "about_us_block[header]"

      assert_select "textarea#about_us_block_body[name=?]", "about_us_block[body]"
    end
  end
end
