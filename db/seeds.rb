# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

60.times do
  gimei = Gimei.new
  User.create(
    last_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    last_name_kana: gimei.last.katakana,
    first_name_kana: gimei.first.katakana,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password(min_length: 6, mix_case: true)
  )
end