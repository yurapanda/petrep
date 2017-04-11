class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

  has_many :notifications, foreign_key: :recipient_id
  has_many :patients, dependent: :destroy
  has_many :comments, dependent: :destroy

 

end
