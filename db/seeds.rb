# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Specialty.create([
  { name: 'Aquarela' },
  {name: 'Biomecânica' },
  { name: 'Black Work' },
  { name: 'Celta' },
  { name: 'Colorida' },
  { name: 'Freehand' },
  { name: 'Geek' },
  { name: 'Geométrica' },
  { name: 'Graywash' },
  { name: 'Lettering' },
  { name: 'Mandala' },
  { name: 'Maori' },
  { name: 'New School' },
  { name: 'Old School' },
  { name: 'Oriental' },
  { name: 'Pontilhismo' },
  { name: 'Realismo' },
  { name: 'Surrealismo' },
  { name: 'Fine Line' },
  { name: 'Tribal' },
  { name: 'Japonesa' }]
)

User.create!(
    first_name: Faker::Name.name,
    last_name: 'amaral',
    city: 'BH',
    username: 'joaozin',
    experience: 'viajei o mundo todo tatuando e sou fodao',
    email: 'joaozinho@gmail.com',
    password: 'atalaia123123123',
    photo: 'https://tudoparahomens.com.br/wp-content/uploads/2016/07/tatuador-.jpg'
)
User.create!(
    first_name: Faker::Name.name,
    last_name: 'amarallin',
    city: 'SP',
    username: 'joaozin2',
    experience: 'viajei o mundo todo tatuando e sou fodao2',
    email: 'joaozinho2@gmail.com',
    password: 'atalaia123123123',
    photo: 'https://f.i.uol.com.br/fotografia/2019/03/29/15538955325c9e906cdc68e_1553895532_3x2_md.jpg'
)
User.create!(
    first_name: Faker::Name.name,
    last_name: 'amaral3',
    city: 'JF',
    username: 'joaozin3',
    experience: 'viajei o mundo todo tatuando e sou fodao3',
    email: 'joaozinho3@gmail.com',
    password: 'atalaia123123123',
    photo: 'https://www.brother.pt/-/media/images/brother-pt/modules/feature-module-images/tatuadores/1170-tatuador.jpg?mw=585&hash=D70A0C9AEA2F020AB762568F4FC5B63AF7FED6C6'
)
User.create!(
    first_name: Faker::Name.name,
    last_name: 'amaral4',
    city: 'RJ',
    username: 'joaozin4',
    experience: 'viajei o mundo todo tatuando e sou fodao4',
    email: 'joaozinho4@gmail.com',
    password: 'atalaia123123123',
    photo: 'https://saocarlosemrede.com.br/wp-content/uploads/2019/01/21731338_599569217099301_8760591489622192090_n-696x464.jpg'
)
User.create!(
    first_name: Faker::Name.name,
    last_name: 'amaral5',
    city: 'JUNIO',
    username: 'joaozin5',
    experience: 'viajei o mundo todo tatuando e sou fodao5',
    email: 'joaozinho5@gmail.com',
    password: 'atalaia123123123',
    photo: 'https://wondergirls.com.br/wp-content/uploads/2018/10/Tatuador-Felipe-Eric.jpg'
)
User.create!(
    first_name: Faker::Name.name,
    last_name: 'amaral6',
    city: 'MG',
    username: 'joaozin6',
    experience: 'viajei o mundo todo tatuando e sou fodao6',
    email: 'joaozinho6@gmail.com',
    password: 'atalaia123123123',
    photo: 'https://www.dicasdemulher.com.br/wp-content/uploads/2017/09/como-encontrar-bons-tatuadores-1.jpg'
)
