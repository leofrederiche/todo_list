# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


list = List.new
list.title = 'Tarefas para casa'
list.description = 'Aqui jás todas as terefas que devem ser cumpridas para limpeza da casa.'
list.save

list = List.new
list.title = 'Afazeres'
list.description = 'Afazeres do dia-a-dia (estudar, igreja, jogar, tocar violão/violino).'
list.save
