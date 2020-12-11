class Question < ApplicationRecord
  has_many :question_users
  has_many :users, through: :question_users, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_one_attached :image

  def was_attached?
    self.image.attached?
  end

  validates :text, presence: true
  validates :name, presence: true
end
