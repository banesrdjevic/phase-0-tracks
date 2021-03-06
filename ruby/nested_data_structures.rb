# Nested Data Structures

# Build a 3 apartment complex

# Lobby, 3 chairs, table w/ magazines, mirror
# Apt 1, Dog, Cat, 1 bedroom, 1 bath,
# Apt 2, Cat, Lizard, 2 bedroom, 1 bath,
# Apt 3, 2 birds, 3 tarantulas, 3 bedroom, 2 and a half bath, patio


apartment_complex = {
  lobby_items: [
    'chairs',
    'table',
    'magazine',
    'mirror'
  ],
  apt_1: {
    layout: {
      Bedrooms: 1,
      Bath: 1
    },
    pets: [
      'dog',
      'cat'
    ]
  },
  apt_2: {
    layout: {
      Bedrooms: 2,
      Bath: 1
    },
    pets: [
      'cat',
      'lizard'
    ]
  },
  apt_3: {
    pets_3: [
      'bird', 
      'bird',
      'tarantula',
      'tarantula',
      'tarantula'
    ],
    layout_3: {
      Bedrooms: 3,
      Bath: 2.5,
      Patio: 1
    }
  }
}

# pets test, see if you can name a nest in one structure the same as the next
# call the first apt, layout, bedroom, 1
p apartment_complex[:apt_1][:layout][:Bedrooms]
# call the second apt, layout, bedroom, 2
p apartment_complex[:apt_2][:layout][:Bedrooms]
# verify that p for apt_1 nested layout still unchanged
p apartment_complex[:apt_1][:layout][:Bedrooms]

