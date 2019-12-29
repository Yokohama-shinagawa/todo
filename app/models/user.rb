class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  mount_uploader :image, ImageUploader #画像のアップロード
  
  has_many :middle
  has_many :groupss, through: :middle
end
