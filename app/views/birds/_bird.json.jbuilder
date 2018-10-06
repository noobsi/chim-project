json.extract! bird, :id, :bird_name, :bird_info, :bird_price, :bird_voice, :species, :created_at, :updated_at
json.url bird_url(bird, format: :json)
