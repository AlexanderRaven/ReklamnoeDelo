class AddAvatarToCommandItems < ActiveRecord::Migration
  def self.up
    add_attachment :command_items, :avatar
  end

  def self.down
    remove_attachment :command_items, :avatar
  end
end
