class Room < ApplicationRecord

  validates :name, presence: true          #バリデーション ルーム名が存在してる場合のみＯＫ
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
end
