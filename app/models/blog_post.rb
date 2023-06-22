class BlogPost < ApplicationRecord
  belongs_to :user
  has_one_attached :illustration
  has_many :comments, dependent: :destroy
  paginates_per 2
end


