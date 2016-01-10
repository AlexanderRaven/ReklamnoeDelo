require 'rails_helper'

RSpec.describe "contact_messages/index", type: :view do
  before(:each) do
    assign(:contact_messages, [
      ContactMessage.create!(
        :name => "Name",
        :email => "Email",
        :telephone => "Telephone",
        :message => "MyText"
      ),
      ContactMessage.create!(
        :name => "Name",
        :email => "Email",
        :telephone => "Telephone",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of contact_messages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
