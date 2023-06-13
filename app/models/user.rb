class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, { reader: 0, writer: 1, admin: 2 }
  attribute :role, :integer, default: 0
  has_many :blog_posts, dependent: :destroy

end
