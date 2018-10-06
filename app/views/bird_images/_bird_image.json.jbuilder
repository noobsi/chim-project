json.extract! bird_image, :id, :image, :bird, :created_at, :updated_at
json.url bird_image_url(bird_image, format: :json)
