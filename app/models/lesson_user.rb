class LessonUser < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  belongs_to :evaluation_item
  # validates :evaluation_item, uniqueness: true
end
