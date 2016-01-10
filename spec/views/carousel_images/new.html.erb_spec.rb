require 'rails_helper'

RSpec.describe "carousel_images/new", type: :view do
  before(:each) do
    assign(:carousel_image, CarouselImage.new(
      :title => "MyString"
    ))
  end

  it "renders new carousel_image form" do
    render

    assert_select "form[action=?][method=?]", carousel_images_path, "post" do

      assert_select "input#carousel_image_title[name=?]", "carousel_image[title]"
    end
  end
end
