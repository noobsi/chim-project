class User < ActiveRecord::Base
<<<<<<< HEAD
    has_many    :reviews#, dependent :destroy
    has_secure_password
=======
    has_many    :reviews, dependent: :destroy
>>>>>>> cb4d87da63f7eb7d8f0843252cdc3993d778f2dc
end
