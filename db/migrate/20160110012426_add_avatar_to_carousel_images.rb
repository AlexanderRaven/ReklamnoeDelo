class AddAvatarToCarouselImages < ActiveRecord::Migration
  def self.up
    add_attachment :carousel_images, :avatar
  end

  def self.down
    remove_attachment :carousel_images, :avatar
  end
end
