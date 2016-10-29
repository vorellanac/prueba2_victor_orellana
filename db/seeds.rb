# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Item.destroy_all
User.destroy_all

neumatico = Category.create!(name: "Neumaticos")
llantas = Category.create!(name: "Llantas")


Item.create!(serial: 100, size: 2, description: 'Neumaticos R13', category_id: Category.where(name: 'Neumaticos').first.id)
Item.create!(serial: 29, size: 3, description: 'Llantas R13', category_id: Category.where(name: 'Llantas').first.id)
# cat2.products.build(precio: 200, category_id: Category.where(name: 'Category2').first.id).save!