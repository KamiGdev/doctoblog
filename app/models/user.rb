class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, { reader: 0, writer: 1, admin: 2 }
  attribute :role, :integer, default: 0
  has_many :blog_posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  enum :job_type, {pr: 0, dr: 1, nurse: 3, caregiver: 4, medical_staff: 5, technical_staff:6 }

  def admin?
    email == 'kami@k.k'
  end
end
