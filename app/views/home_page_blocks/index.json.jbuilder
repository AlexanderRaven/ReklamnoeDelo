json.array!(@home_page_blocks) do |home_page_block|
  json.extract! home_page_block, :id, :header, :body
  json.url home_page_block_url(home_page_block, format: :json)
end
