# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
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


# Lesson.create(name: "潜る")
# Lesson.create(name: "浮く")
# Lesson.create(name: "クロール")
# Lesson.create(name: "平泳ぎ")
# Lesson.create(name: "背泳ぎ")
# Lesson.create(name: "バタフライ")

# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-1", 
#   name: "1人でプールに入る"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-2", 
#   name: "1人でプールから上がる"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-3", 
#   name: "1人で歩く"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-4", 
#   name: "1人でジャンプする"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-5", 
#   name: "顔を洗う"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-6", 
#   name: "顔をつける"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-7", 
#   name: "耳をつける"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-8", 
#   name: "バブリング①"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-9", 
#   name: "立ち飛び込み(浅場)"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-10", 
#   name: "バブリング②"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-11", 
#   name: "立ち飛び込み(深場)①"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-12", 
#   name: "ボビング"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-13", 
#   name: "立ち飛び込み(深場)②"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-14", 
#   name: "色の識別"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-15", 
#   name: "物の識別"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-16", 
#   name: "ジャンプボビング"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-17", 
#   name: "おしりつけ"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-18", 
#   name: "立ち飛び込み(深場)＋ジャンプボビング"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-19", 
#   name: "お腹つけ"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-20", 
#   name: "背中つけ"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-21", 
#   name: "逆立ち①"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-22", 
#   name: "前まわり①"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-23", 
#   name: "逆立ち②"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-24", 
#   name: "前まわり②"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-25", 
#   name: "石拾い"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-26", 
#   name: "垂直潜行(3回)"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-27", 
#   name: "垂直潜行から水中潜泳(12.5m)"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-28", 
#   name: "水中潜泳(途中息継ぎ1回)①"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-29", 
#   name: "水中潜泳①"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-30", 
#   name: "水中潜泳(途中息継ぎ1回)②"
# )
# EvaluationItem.create(
#   lesson_id: 1, 
#   item_number: "D-31", 
#   name: "水中潜泳②"
# )
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-1", 
  name: "1人で浮く(立ち浮き)"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-2", 
  name: "1人で浮く(うつむけ・顔つけなし)"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-3", 
  name: "1人で浮く(背面)①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-4", 
  name: "壁をつたって移動する"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-5", 
  name: "台から壁にとびつく①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-6", 
  name: "台から台にとびつく(手から)①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-7", 
  name: "1人で浮く(うつむけ)①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-8", 
  name: "1人で浮く(背面)②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-9", 
  name: "台から壁にとびつく②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-10", 
  name: "台から台にとびつく(手から)②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-11", 
  name: "1人で浮く(うつむけ)②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-12", 
  name: "1人で浮く(背面)③"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-13", 
  name: "台から壁にとびつく③"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-14", 
  name: "台から台にとびつく(手から)③"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-15", 
  name: "1人で浮く(うつむけ)③"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-16", 
  name: "連続泳(背面)キックのみ"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-17", 
  name: "ロールスイム(アニマル⇆背面)"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-18", 
  name: "連続泳/50"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-19", 
  name: "連続泳(背面)キックのみ①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-20", 
  name: "連続泳/100①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-21", 
  name: "連続泳/100②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-22", 
  name: "連続泳(背面)キックのみ②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-23", 
  name: "浮き身1分"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-24", 
  name: "連続泳/200①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-25", 
  name: "フロントクロール①"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-26", 
  name: "立ち泳ぎ1分(手あり)"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-27", 
  name: "連続泳/100③"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-28", 
  name: "フロントクロール②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-29", 
  name: "立ち泳ぎ1分(足のみ)"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-30", 
  name: "連続泳/200②"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-31", 
  name: "フロントクロール③"
)
EvaluationItem.create(
  lesson_id: 2, 
  item_number: "F-32", 
  name: "連続泳/500"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-1", 
  name: "アニマルストローク①"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-2", 
  name: "アニマルストローク②"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-3", 
  name: "アニマルストローク③"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-4", 
  name: "グライドキック(呼吸なし)"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-5", 
  name: "グライドキック①"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-6", 
  name: "グライドキック②"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-7", 
  name: "息継ぎなしクロール①"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-8", 
  name: "ロールキック(ストリームライン)"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-9", 
  name: "グライドキック③"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-10", 
  name: "息継ぎなしクロール②"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-11", 
  name: "グライドキック(サイドブレス)"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-12", 
  name: "片手クロール①(サイドブレス)"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-13", 
  name: "コンビネーション①(両手回し)"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-14", 
  name: "片手クロール②(サイドブレス)"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-15", 
  name: "コンビネーション②"
)
EvaluationItem.create(
  lesson_id: 3, 
  item_number: "Cr-16", 
  name: "コンビネーション③"
)
EvaluationItem.create(
  lesson_id: 4, 
  item_number: "Br-1", 
  name: "グライドキック(手横)①"
)
EvaluationItem.create(
  lesson_id: 4, 
  item_number: "Br-2", 
  name: "グライドキック(手横)②"
)
EvaluationItem.create(
  lesson_id: 4, 
  item_number: "Br-3", 
  name: "グライドキック(手前)"
)
EvaluationItem.create(
  lesson_id: 4, 
  item_number: "Br-4", 
  name: "グライドキック(2K1P)①(ストリームライン)"
)
EvaluationItem.create(
  lesson_id: 4, 
  item_number: "Br-5", 
  name: "グライドキック(2K1P)②"
)
EvaluationItem.create(
  lesson_id: 4, 
  item_number: "Br-6", 
  name: "コンビネーション"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-1", 
  name: "背面キック(手横)①"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-2", 
  name: "背面キック(手横)②"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-3", 
  name: "背面キック(手横)③"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-4", 
  name: "背面キック(手横)④"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-5", 
  name: "背面キック(手上)①(ストリームライン)"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-6", 
  name: "背面キック(手上)②"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-7", 
  name: "背面キック(手上)③"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-8", 
  name: "背面キック(手上)④"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-9", 
  name: "3カウントスイム①"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-10", 
  name: "背面キック(手上)⑤"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-11", 
  name: "コンビネーション①"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-12", 
  name: "3カウントスイム②"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-13", 
  name: "コンビネーション②"
)
EvaluationItem.create(
  lesson_id: 5, 
  item_number: "Ba-14", 
  name: "コンビネーション③"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-1", 
  name: "グライドキック①"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-2", 
  name: "グライドキック②"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-3", 
  name: "グライドキック(4K1P)①(ストリームライン)"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-4", 
  name: "グライドキック(4K1P)②"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-5", 
  name: "片手バタフライ(サイドブレス)"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-6", 
  name: "ノーブレバタフライ"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-7", 
  name: "コンビネーション①"
)
EvaluationItem.create(
  lesson_id: 6, 
  item_number: "Fly-8", 
  name: "コンビネーション②"
)