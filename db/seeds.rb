# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
              email: "admin@example.jp",
              password: "123123",
              )

item = Item.create(name: "ラムが薫るタルト",
                  explanation: "ラム酒をふんだんに使ったタルトです。",
                  tax_out_price: 280)
item.image.attach(io: File.open(Rails.root.join('app/assets/images/taruto.jpg')),
                  filename: 'taruto.jpg')

item = Item.create(name: "フランス帰りのシャフが作るカリカリマカロン",
                  explanation: "本場フランス仕込みの自慢のマカロンです。",
                  tax_out_price: 280)
item.image.attach(io: File.open(Rails.root.join('./app/assets/images/makaron.jpg')),
                  filename: 'makaron.jpg')

item = Item.create(name: "ながのピスタチオチョコレート",
                  explanation: "長野県産のピスタチオを使用したミルクチョコレートです",
                  tax_out_price: 220)
item.image.attach(io: File.open(Rails.root.join('./app/assets/images/choco.jpg')),
                  filename: 'choco.jpg')

item = Item.create(name: "生チョコレートケーキ",
                  explanation: "北海道産の生クリームをたっぷりとブレンドした、シルクのように滑らかな口どけの生チョコレートケーキです。",
                  tax_out_price: 520)
item.image.attach(io: File.open(Rails.root.join('./app/assets/images/chococake.jpg')),
                  filename: 'chococake.jpg')

item = Item.create(name: "ながの苺ショート",
                  explanation: "長野県で朝採りされた苺をたっぷり載せたケーキです。",
                  tax_out_price: 430)
item.image.attach(io: File.open(Rails.root.join('./app/assets/images/ichigo.jpg')),
                  filename: 'ichigo.jpg')

item = Item.create(name: "ながのロール",
                  explanation: "クリームたっぷりのふんわり焼き上げた生地で包んだ当店自慢のロールケーキです。",
                  tax_out_price: 1300)
item.image.attach(io: File.open(Rails.root.join('./app/assets/images/roll.jpg')),
                  filename: 'roll.jpg')
