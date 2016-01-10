require 'rails_helper'

RSpec.describe "carousel_images/show", type: :view do
  before(:each) do
    @carousel_image = assign(:carousel_image, CarouselImage.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
