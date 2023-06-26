class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog_post
  default_scope { order(created_at: :desc) }
end
