require 'rails_helper'

RSpec.describe "command_items/show", type: :view do
  before(:each) do
    @command_item = assign(:command_item, CommandItem.create!(
      :name => "Name",
      :position => "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Position/)
  end
end
