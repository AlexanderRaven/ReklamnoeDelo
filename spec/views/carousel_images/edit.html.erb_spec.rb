require 'rails_helper'

RSpec.describe "carousel_images/edit", type: :view do
  before(:each) do
    @carousel_image = assign(:carousel_image, CarouselImage.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit carousel_image form" do
    render

    assert_select "form[action=?][method=?]", carousel_image_path(@carousel_image), "post" do

      assert_select "input#carousel_image_title[name=?]", "carousel_image[title]"
    end
  end
end
