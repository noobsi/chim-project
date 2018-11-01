class Review < ActiveRecord::Base
    belongs_to  :user
    belongs_to  :bird

    validates :comment, presence: true
    validates :rating, numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 50 }
end
