class Lesson < ApplicationRecord

  has_many :users, through: :lesson_users
  has_many :lesson_users

  validates :name, presence: true
end
