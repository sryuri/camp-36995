# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# キャンプスタイル
style = Category.create(name: "キャンプスタイル")
style_1 = style.children.create(name:"すべて")
style_2 = style.children.create(name:"グランピング")
style_3 = style.children.create(name:"ソロキャンプ")
style_4 = style.children.create(name:"winterキャンプ")
style_5 = style.children.create(name:"ファミリーキャンプ")
style_6 = style.children.create(name:"キャンプ女子")
style_7 = style.children.create(name:"おしゃれキャンプ")
style_8 = style.children.create(name:"その他")


# キャンプご飯
meal = Category.create(name: "キャンプご飯")
meal_1 = meal.children.create(name:"すべて")
meal_2 = meal.children.create(name:"メスティン")
meal_3 = meal.children.create(name:"ダッチオーブン")
meal_4 = meal.children.create(name:"ホットサンドメーカー")
meal_5 = meal.children.create(name:"BBQ")
meal_6 = meal.children.create(name:"スキレット")
meal_7 = meal.children.create(name:"おつまみ")
meal_8 = meal.children.create(name:"子供")
meal_9 = meal.children.create(name:"包んで焼くだけ")
meal_10 = meal.children.create(name:"デザート")
meal_11 = meal.children.create(name:"ごはん物")
meal_12 = meal.children.create(name:"朝食・ランチ")
meal_13 = meal.children.create(name:"定番")
meal_14 = meal.children.create(name:"脱マンネリ")
meal_15 = meal.children.create(name:"その他")


# キャンプ用品
goods = Category.create(name:"キャンプ用品")
goods_1 = goods.children.create(name:"すべて")
goods_2 = goods.children.create(name:"テント・タープ")
goods_3 = goods.children.create(name:"ライト/・ランタン")
goods_4 = goods.children.create(name:"ファニチャー")
goods_5 = goods.children.create(name:"ファッション")
goods_6 = goods.children.create(name:"寝具")
goods_7 = goods.children.create(name:"暖房器具")
goods_8 = goods.children.create(name:"収納")
goods_9 = goods.children.create(name:"クッキング用品")
goods_10 = goods.children.create(name:"テーブルウェア")
goods_11 = goods.children.create(name:"100均")
goods_12 = goods.children.create(name:"ハンドメイド")
goods_13 = goods.children.create(name:"その他")
