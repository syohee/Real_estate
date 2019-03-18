# README
## 不動産検索サイト
## 概要
世の中にない便利な機能、「位置検索」を持つ不動産検索サイトです。
## コンセプト
望む条件で検索する不動産検索サイト
## バージョン
Ruby 2.4.0 Rails 5.1.6
## 機能一覧

* [ ] **位置検索**
    位置と半径を指定して、その中に含まれた不動産を検索

* [ ] **検索機能**

  * [x] 地域検索 <br>

    所在地で検索

  * [ ] 条件検索
  
    家賃の下限~上限、間取りタイプ、建物の種類、こだわり条件を複合検索
  
* [x] **不動産機能**

  * [x] 不動産の作成、編集、削除、一覧、詳細機能
  
  * [x] 不動産の作成、編集、削除は物件を登録した不動産業者のみ実行可能
  * [x] 不動産業者は物件ごとに敷金や礼金、広さ等の情報と写真を複数枚登録できる
  
* [ ] **ユーザー**

  * [x] ユーザー登録機能
  
    一般のユーザーと不動産業者の登録

  * [x] ログイン
  
    一般のユーザーと不動産業者のログイン

  * [x] ログアウト
  
  * [x] マイページ
  
    プロフィールの登録、編集機能

  * [ ] お気に入り
  
    不動案のお気に入り、お気に入りキャンセル

  * [ ] 検索条件保存
  
    検索条件の保存、削除
  
* [ ] **お問い合わせ** 

　* ユーザーが不動産業者にメール

## カタログ設計
https://docs.google.com/spreadsheets/d/1flQyok8WbMjkA02tfLkSQdBn02-LJHVZCQUCPGrxrBw/edit?usp=sharing
## テーブル定義 
https://docs.google.com/spreadsheets/d/1_PhjmuBX-cS-OSvogoIG0Wtqz6DgVR8_lgjh8IhoqtE/edit?usp=sharing
## 画面遷移図
https://docs.google.com/spreadsheets/d/15rJe-yBguZTJc7ctZNp-lIiE6BCTvJla9a12p9Pd9co/edit?usp=sharing
## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1efVgF3qcgU0xCyjmLjXsvEzAR7gFPF_ZWohl5LgOhr8/edit?usp=sharing
## 使用予定Gem

* jquery-rails
* devise
* carrierwave
* mini_magick
* geocoder