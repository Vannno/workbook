class Question < ApplicationRecord
  has_many :question_users
  has_many :users, through: :question_users, dependent: :destroy
  has_many :answers, dependent: :destroy

  validates :name, presence: true
end
