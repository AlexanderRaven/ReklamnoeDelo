json.array!(@about_us_blocks) do |about_us_block|
  json.extract! about_us_block, :id, :header, :body
  json.url about_us_block_url(about_us_block, format: :json)
end
