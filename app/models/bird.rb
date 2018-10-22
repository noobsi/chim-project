class Bird < ActiveRecord::Base
    belongs_to  :species
    has_many    :bird_images,   dependent: :destroy
    has_many    :reviews,       dependent: :destroy

    def rating
      if reviews.empty?
        0
      else
        reviews.average(:rating)/10
      end
    end
end
