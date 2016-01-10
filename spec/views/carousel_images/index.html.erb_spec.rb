require 'rails_helper'

RSpec.describe "carousel_images/index", type: :view do
  before(:each) do
    assign(:carousel_images, [
      CarouselImage.create!(
        :title => "Title"
      ),
      CarouselImage.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of carousel_images" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
