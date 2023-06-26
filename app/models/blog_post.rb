class BlogPost < ApplicationRecord
  belongs_to :user
  has_one_attached :illustration
  has_many :comments, dependent: :destroy
  paginates_per 2
  
   def self.ransackable_attributes(auth_object = nil)
    ["title", "subtitle", "body", "created_at", "id", "updated_at", "user_id"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["comments",  "user", "illustration_attachment", "illustration_blob",]
  end
end


