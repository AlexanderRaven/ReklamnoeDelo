require 'rails_helper'

RSpec.describe "about_us_blocks/edit", type: :view do
  before(:each) do
    @about_us_block = assign(:about_us_block, AboutUsBlock.create!(
      :header => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit about_us_block form" do
    render

    assert_select "form[action=?][method=?]", about_us_block_path(@about_us_block), "post" do

      assert_select "input#about_us_block_header[name=?]", "about_us_block[header]"

      assert_select "textarea#about_us_block_body[name=?]", "about_us_block[body]"
    end
  end
end
