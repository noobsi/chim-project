json.extract! review, :id, :comment, :rating, :user, :bird, :created_at, :updated_at
json.url review_url(review, format: :json)
