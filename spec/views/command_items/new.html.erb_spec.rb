require 'rails_helper'

RSpec.describe "command_items/new", type: :view do
  before(:each) do
    assign(:command_item, CommandItem.new(
      :name => "MyString",
      :position => "MyString"
    ))
  end

  it "renders new command_item form" do
    render

    assert_select "form[action=?][method=?]", command_items_path, "post" do

      assert_select "input#command_item_name[name=?]", "command_item[name]"

      assert_select "input#command_item_position[name=?]", "command_item[position]"
    end
  end
end
