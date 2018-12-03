class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :review
  belongs_to :bird

  scope :all_replies, ->{order(created_at: :desc)}

  validates :content, presence: true
end
