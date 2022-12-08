class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #use zxcvbn gem to make the password more complex
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable :zxcvbnable
end
