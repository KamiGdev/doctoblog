class BlogPost < ApplicationRecord
  belongs_to :user
  has_one_attached :illustration
end
