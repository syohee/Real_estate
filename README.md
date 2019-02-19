# README
## 不動産検索サイト
## 概要
世の中にない便利な機能を持つ不動産検索サイト
## コンセプト
不動産検索サイト
## バージョン
Ruby 2.4.0 Rails 5.1.6
## 機能一覧

* [ ] **検索機能**

  * 位置検索 <br>

    地域検索、位置半径で検索

  * 条件検索
  
    家賃の下限~上限、間取りタイプ、建物の種類、こだわり条件を複合検索
  
* [ ] **不動産機能**

  * 不動産の作成、編集、削除、一覧、詳細機能
  
  * 不動産のさくせい、編集、削除は物件を登録した不動産業者のみ実行可能
  
* [ ] **ユーザー**

  * ユーザー登録機能
  
    一般のユーザーと不動産業者の登録

  * ログイン
  
    一般のユーザーと不動産業者のログイン

  * ログアウト
  
  * マイページ
  
    プロフィールの登録、編集、削除機能

  * お気に入り
  
    不動案のお気に入り、お気に入りキャンセル

  * 検索条件保存
  
    検索条件の保存、削除
  
* [ ] **お問い合わせ** 

　* ユーザーが不動産業者にメール

## カタログ設計
https://docs.google.com/spreadsheets/d/1flQyok8WbMjkA02tfLkSQdBn02-LJHVZCQUCPGrxrBw/edit#gid=278321252
## テーブル定義 
https://docs.google.com/spreadsheets/d/1_PhjmuBX-cS-OSvogoIG0Wtqz6DgVR8_lgjh8IhoqtE/edit#gid=1502881689
## 画面遷移図
https://docs.google.com/spreadsheets/d/15rJe-yBguZTJc7ctZNp-lIiE6BCTvJla9a12p9Pd9co/edit#gid=0
## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1efVgF3qcgU0xCyjmLjXsvEzAR7gFPF_ZWohl5LgOhr8/edit#gid=1012776025
## 使用予定Gem

* jquery-rails
* bcrypt
* carrierwave
* mini_magick