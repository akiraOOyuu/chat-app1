class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true          #バリデーション ルーム名が存在してる場合のみＯＫ
end
