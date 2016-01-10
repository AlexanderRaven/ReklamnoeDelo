require 'rails_helper'

RSpec.describe "command_items/edit", type: :view do
  before(:each) do
    @command_item = assign(:command_item, CommandItem.create!(
      :name => "MyString",
      :position => "MyString"
    ))
  end

  it "renders the edit command_item form" do
    render

    assert_select "form[action=?][method=?]", command_item_path(@command_item), "post" do

      assert_select "input#command_item_name[name=?]", "command_item[name]"

      assert_select "input#command_item_position[name=?]", "command_item[position]"
    end
  end
end
