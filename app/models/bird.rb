class Bird < ActiveRecord::Base
  belongs_to  :species
  has_many    :bird_images,   dependent: :destroy
  has_many    :reviews,       dependent: :destroy

  def rating
    if reviews.empty?
      0
    else
      (reviews.average(:rating)/10).round(1)
    end
  end

  def review_user_present? id
    reviews.find_by(user: id).present?
  end

  def review_user id
    reviews.find_by(user: id)
  end

  def review_count
    reviews.count
  end
end
