class BirdImage < ActiveRecord::Base
    belongs_to  :bird

    #mount_uploader :image, BirdImageUploader
end
