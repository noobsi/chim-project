class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :bird
  belongs_to :review

  scope :all_replies, ->{order(created_at: :desc)}

  validates :content, presence: true
end
