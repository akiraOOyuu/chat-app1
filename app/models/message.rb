class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image                     #イメージファイル紐づけ
  validates :content, presence: true, unless: :was_attached?          #バリデーション

  def was_attached?
    self.image.attached?
  end
end
