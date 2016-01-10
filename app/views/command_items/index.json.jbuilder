json.array!(@command_items) do |command_item|
  json.extract! command_item, :id, :name, :position
  json.url command_item_url(command_item, format: :json)
end
