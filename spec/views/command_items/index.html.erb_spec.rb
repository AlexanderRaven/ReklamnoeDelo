require 'rails_helper'

RSpec.describe "command_items/index", type: :view do
  before(:each) do
    assign(:command_items, [
      CommandItem.create!(
        :name => "Name",
        :position => "Position"
      ),
      CommandItem.create!(
        :name => "Name",
        :position => "Position"
      )
    ])
  end

  it "renders a list of command_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
