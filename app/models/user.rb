class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable

  validates :name, presence: true          #バリデーション

  has_many :room_users                  #中間テーブル紐づけ
  has_many :rooms,through: :room_users
  has_many :messages
end
