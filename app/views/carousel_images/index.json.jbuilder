json.array!(@carousel_images) do |carousel_image|
  json.extract! carousel_image, :id, :title
  json.url carousel_image_url(carousel_image, format: :json)
end
