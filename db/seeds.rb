# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Structure.create(name: 'ワンルーム')
Structure.create(name: '1K')
Structure.create(name: '1DK')
Structure.create(name: '1LDK')
Structure.create(name: '2K')
Structure.create(name: '2DK')
Structure.create(name: '2LDK')
Structure.create(name: '3K')
Structure.create(name: '3DK')
Structure.create(name: '3LDK')
Structure.create(name: '4K')
Structure.create(name: '4DK')
Structure.create(name: '4LDK')
Structure.create(name: '5K以上')

Type.create(name: 'マンション')
Type.create(name: 'アパート')
Type.create(name: '一戸建て・その他')

Term.create(name: 'バス・トイレ別')
Term.create(name: '2階以上')
Term.create(name: '室内洗濯機置き場')
Term.create(name: 'エアコン付')
Term.create(name: '駐車場あり')
Term.create(name: 'エレベーター')
Term.create(name: '宅配ボックス')
Term.create(name: 'オートロック')
Term.create(name: 'フローリング')