class CommandItem < ActiveRecord::Base
  validates :name, presence: true
  validates :avatar,
            attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
            attachment_size: { less_than: 5.megabytes }
  has_attached_file :avatar, styles: {
      photo: '350x210#'
  }
end
