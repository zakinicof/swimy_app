
# アプリ名

# Swimy

## アプリの概要

###### スイミングスクール通っているお子さまのレッスン進捗を保護者様が確認できるアプリです。

## 制作背景

###### 私が勤めているスイミングスクールでは、コロナの影響により、保護者様がプールサイドでお子さまのレッスンを見学できなくなり、お子さまのレッスンの進捗や泳力を把握しづらいという問題が生起しました。その問題を少しでも解消したいという思いから今回のアプリを制作いたしました。

## 実装機能

- ユーザー管理機能
- レッスン一覧表示機能
- レッスン詳細表示機能
- ユーザー一覧表示機能（管理者）
- 各ユーザーのレッスン編集機能（管理者）

## 本番環境

- GitHub:https://github.com/zakinicof/swimy_app
- デプロイ先:https://swimy-app-21165.herokuapp.com/
- Basic認証:ユーザー名:admin / パスワード:2222
- テストアカウント:Email:test123@gmail.com / Password:test123

## DEMO

## トップ(レッスン一覧)画面
<img width="1440" alt="スクリーンショット 2020-12-07 15 35 03" src="https://user-images.githubusercontent.com/72780750/101317658-421d3580-38a2-11eb-82f3-808293b8acfc.png">

## レッスン詳細画面
<img width="1440" alt="スクリーンショット 2020-12-07 18 34 49" src="https://user-images.githubusercontent.com/72780750/101334327-10649880-38bb-11eb-919d-ab7a5fd9495b.png">

## ユーザー一覧画面
<img width="1440" alt="スクリーンショット 2020-12-07 15 45 17" src="https://user-images.githubusercontent.com/72780750/101318189-41d16a00-38a3-11eb-9274-e3fbc9b47bc6.png">

## レッスン編集画面
<img width="1440" alt="スクリーンショット 2020-12-07 15 46 57" src="https://user-images.githubusercontent.com/72780750/101318327-7d6c3400-38a3-11eb-863c-cdb6f0448fe6.png">

## ログイン画面
<img width="1440" alt="スクリーンショット 2020-12-07 15 41 24" src="https://user-images.githubusercontent.com/72780750/101317960-dd160f80-38a2-11eb-996c-affed1ca0510.png">

## 新規登録画面
<img width="1440" alt="スクリーンショット 2020-12-07 15 42 13" src="https://user-images.githubusercontent.com/72780750/101318050-0767cd00-38a3-11eb-8102-cb865779d008.png">

## 工夫したポイント

- レッスンの進捗を円グラフで表示することにより、各泳法の泳力の把握を容易にしました。
- レッスン一覧画面で6項目(潜る・浮く・クロール・平泳ぎ・背泳ぎ・バタフライ)の円グラフを全て表示することにより、各泳法の得意・不得意の把握を容易にしました。
- レッスン編集画面にてチェックボックスを使用することにより、達成項目の記録を容易にしました。

## 使用技術（開発環境）

- 言語：HTML,CSS,Ruby
- フレームワーク：Ruby on Rails
- DB：mysql
- サーバー：AWS

## 課題や今後実装したい機能

- 各評価項目を5段階評価へ変更
- コメント投稿機能（保護者⇆コーチ）
- レッスン振替申請フォームの作成

## DB設計
<img width="1078" alt="スクリーンショット 2020-12-07 16 10 48" src="https://user-images.githubusercontent.com/72780750/101320356-f1f4a200-38a6-11eb-892b-8452d86ed12f.png">






