class CarouselImage < ActiveRecord::Base
  validates :title, presence: true
  validates :avatar,
            attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
            attachment_size: { less_than: 5.megabytes }
  has_attached_file :avatar, styles: {
      slide: '843x403#'
  }
end
