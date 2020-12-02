FactoryBot.define do
  factory :user do
    gimei = Gimei.new
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6, mix_case: true)}
    password_confirmation {password}
    last_name             {gimei.last}
    first_name            {gimei.first}
    last_name_kana        {gimei.last.katakana}
    first_name_kana       {gimei.first.katakana}
  end
end