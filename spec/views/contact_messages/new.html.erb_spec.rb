require 'rails_helper'

RSpec.describe "contact_messages/new", type: :view do
  before(:each) do
    assign(:contact_message, ContactMessage.new(
      :name => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new contact_message form" do
    render

    assert_select "form[action=?][method=?]", contact_messages_path, "post" do

      assert_select "input#contact_message_name[name=?]", "contact_message[name]"

      assert_select "input#contact_message_email[name=?]", "contact_message[email]"

      assert_select "input#contact_message_telephone[name=?]", "contact_message[telephone]"

      assert_select "textarea#contact_message_message[name=?]", "contact_message[message]"
    end
  end
end
