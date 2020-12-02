require 'rails_helper'
  RSpec.describe User, type: :model do
    before do
      @user = FactoryBot.build(:user)
    end
    describe 'ユーザー新規登録' do
      context '新規登録がうまくいくとき' do
        it "email、password、password_confirmation、first_name、last_name、first_name_kana、last_name_kanaが存在すれば登録できる" do
          expect(@user).to be_valid
        end
      end
      context '新規登録がうまくいかないとき' do
        it "emailが空だと登録できない" do
          @user.email = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("Eメールを入力してください")
        end
        it "重複したemailが存在する場合登録できない" do
          @user.email = "test@gmail.com"
          @user.save
          another_user = FactoryBot.build(:user)
          another_user.email = @user.email
          another_user.valid?
          expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
        end
        it "emailに@が無いと登録できない" do
          @user.email = "aaagmail.com"
          @user.valid?
          expect(@user.errors.full_messages).to include("Eメールには@を含めてください")
        end
        it "passwordが空だと登録できない" do
          @user.password = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードを入力してください")
        end
        it "passwordが5文字以下だと登録できない" do
          @user.password = "aaaa0"
          @user.password_confirmation = "aaaa0"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
        end
        it "passwordが存在してもpassword_confirmationが空では登録できない" do
          @user.password_confirmation = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
        end
        it "passwordが英語のみだと登録できない" do
          @user.password = "aaaaaa"
          @user.password_confirmation = "aaaaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードには英字と数字の両方を含めて設定してください")
        end
        it "passwordが数字のみだと登録できない" do
          @user.password = "111111"
          @user.password_confirmation = "111111"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードには英字と数字の両方を含めて設定してください")
        end
        it "last_nameが空だと登録できない" do
          @user.last_name = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前を入力してください")
        end
        it "last_nameが全角文字でないと登録できない" do
          @user.last_name = "aaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前は全角文字を使用してください")
        end
        it "first_nameが空だと登録できない" do
          @user.first_name = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前を入力してください")
        end
        it "first_nameが全角文字でないと登録できない" do
          @user.first_name = "aaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前は全角文字を使用してください")
        end
        it "last_name_kanaが空だと登録できない" do
          @user.last_name_kana = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前(カナ)を入力してください")
        end
        it "last_name_kanaが全角文字でないと登録できない" do
          @user.last_name_kana = "aaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前(カナ)は全角カタカナを使用してください")
        end
        it "first_name_kanaが空だと登録できない" do
          @user.first_name_kana = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前(カナ)を入力してください")
        end
        it "first_name_kanaが全角文字でないと登録できない" do
          @user.first_name_kana = "aaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("お名前(カナ)は全角カタカナを使用してください")
        end
      end
    end
  end
