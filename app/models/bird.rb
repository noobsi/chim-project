class Bird < ActiveRecord::Base
    belongs_to  :species
    has_many    :bird_images,   dependent: :destroy
    has_many    :reviews,       dependent: :destroy
end
