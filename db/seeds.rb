# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lesson.create!(name: "lesson01")
Lesson.create!(name: "lesson02")
Lesson.create!(name: "lesson03")

EvaluationItem.create!(name: "評価１", item_number: "１", lesson_id: 1)
EvaluationItem.create!(name: "評価２", item_number: "２", lesson_id: 1)
EvaluationItem.create!(name: "評価３", item_number: "３", lesson_id: 2)