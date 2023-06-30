class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog_post
  default_scope { order(created_at: :desc) }
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }
end
