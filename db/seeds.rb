# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

User.create!([
    {first_name: 'leandra',
    last_name: 'medine',
    city: 'New York',
    username: 'Leandra Medine',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/82641075_190938212024735_4103971328591123376_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=LR1bNCuw-xUAX8sBZEM&oh=4c43adac444949426fb6df7833793066&oe=5EE0FC7E',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  },
     {first_name: 'lou',
    last_name: 'doillon',
    city: 'Paris',
    username: 'Lou Doillon',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/80347097_170960580669632_8297356907892120839_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=XDdNMWLTNbUAX9H5Wje&oh=971e5c6e89b265ea918abbe0f3de1b16&oe=5EE490DB',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/75562934_1042124246124422_2279794585027181581_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=cTXqmzXnraMAX8spLyD&oh=06723866acaeb239fbd6b10c2f00a937&oe=5EDFA934',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist
  },
     {first_name: 'yvan',
    last_name: 'attal',
    city: 'São Paulo',
    username: 'Yvan Attal',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/44917787_676670339396006_8845137276365109821_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=q8MOyW4mKfwAX_pduRH&oh=98ba67871ddb65507f9949a9248986a1&oe=5EE0E72D',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  },
     {first_name: 'leandra',
    last_name: 'medine',
    city: 'New York',
    username: 'Leandra Medine',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/82641075_190938212024735_4103971328591123376_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=LR1bNCuw-xUAX8sBZEM&oh=4c43adac444949426fb6df7833793066&oe=5EE0FC7E',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  },
     {first_name: 'leandra',
    last_name: 'medine',
    city: 'New York',
    username: 'Leandra Medine',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/82641075_190938212024735_4103971328591123376_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=LR1bNCuw-xUAX8sBZEM&oh=4c43adac444949426fb6df7833793066&oe=5EE0FC7E',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  },
     {first_name: 'leandra',
    last_name: 'medine',
    city: 'New York',
    username: 'Leandra Medine',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/82641075_190938212024735_4103971328591123376_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=LR1bNCuw-xUAX8sBZEM&oh=4c43adac444949426fb6df7833793066&oe=5EE0FC7E',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  },
     {first_name: 'leandra',
    last_name: 'medine',
    city: 'New York',
    username: 'Leandra Medine',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/82641075_190938212024735_4103971328591123376_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=LR1bNCuw-xUAX8sBZEM&oh=4c43adac444949426fb6df7833793066&oe=5EE0FC7E',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  },
     {first_name: 'leandra',
    last_name: 'medine',
    city: 'New York',
    username: 'Leandra Medine',
    photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/82641075_190938212024735_4103971328591123376_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=LR1bNCuw-xUAX8sBZEM&oh=4c43adac444949426fb6df7833793066&oe=5EE0FC7E',
    work_photo: 'https://instagram.fplu4-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/83773699_123949319144389_3530693866493968410_n.jpg?_nc_ht=instagram.fplu4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=X8wXkZjAvyUAX96MOSy&oh=522590fd48e0f9e868bc231c2e025c34&oe=5EE18641',
    experience: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, itaque. Id necessitatibus consequuntur incidunt facere ipsum aspernatur, corporis, fugit, veniam perferendis ea, nemo sit labore aperiam officiis autem cumque?',
    type: :tattoo_artist

  }])


User.create!(
    first_name: 'joao',
    last_name: 'amaral',
    city: 'BH',
    username: 'joaozin',
    experience: 'viajei o mundo todo tatuando e sou fodao',
    email: 'joaozinho@gmail.com',
    password: 'atalaia123123123'
)
User.create!(
    first_name: 'joaofasfa',
    last_name: 'amarallin',
    city: 'SP',
    username: 'joaozin2',
    experience: 'viajei o mundo todo tatuando e sou fodao2',
    email: 'joaozinho2@gmail.com',
    password: 'atalaia123123123'
)
User.create!(
    first_name: 'joao3',
    last_name: 'amaral3',
    city: 'JF',
    username: 'joaozin3',
    experience: 'viajei o mundo todo tatuando e sou fodao3',
    email: 'joaozinho3@gmail.com',
    password: 'atalaia123123123'
)
User.create!(
    first_name: 'joao4',
    last_name: 'amaral4',
    city: 'RJ',
    username: 'joaozin4',
    experience: 'viajei o mundo todo tatuando e sou fodao4',
    email: 'joaozinho4@gmail.com',
    password: 'atalaia123123123'
)
User.create!(
    first_name: 'joao5',
    last_name: 'amaral5',
    city: 'JUNIO',
    username: 'joaozin5',
    experience: 'viajei o mundo todo tatuando e sou fodao5',
    email: 'joaozinho5@gmail.com',
    password: 'atalaia123123123'
)
User.create!(
    first_name: 'joao6',
    last_name: 'amaral6',
    city: 'MG',
    username: 'joaozin6',
    experience: 'viajei o mundo todo tatuando e sou fodao6',
    email: 'joaozinho6@gmail.com',
    password: 'atalaia123123123'
)
