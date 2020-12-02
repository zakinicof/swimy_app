require 'rails_helper'
 RSpec.describe User, type: :model do
   describe 'ユーザー新規登録' do
     it "last_nameが空だと登録できない" do
      user = User.new(last_name: "", first_name: "あああ", last_name_kana: "アアア", first_name_kana: "アアア", email: "kkk@gmail.com", password: "abc123", password_confirmation: "abc123")
       user.valid?
       binding.pry
     end
     it "emailが空では登録できない" do
     end
   end
 end
