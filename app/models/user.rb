class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates_presence_of :name,length: {minimum: 5, maximum: 15}
  #  validates_length_of :name, minimum: 5, maximum: 15, allow_blank: true
  validates :name,
            presence: true,
            length: {minimum:5,maximum: 25},
            on: :create,
            allow_nil: false
  has_many :message1
end
