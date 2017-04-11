class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
       :rememberable, :trackable, :validatable
  


  has_many :patients, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :invoices, dependent: :destroy, inverse_of: :user

 validates :contact_number, :address, :first_name , :last_name, presence: true
 validates :contact_number,  format: { with: /09[0-9]{2}-[0-9]{3}-[0-9]{4}/,
    message: "Follow (09xx-xxx-xxxx)" }
 

end
