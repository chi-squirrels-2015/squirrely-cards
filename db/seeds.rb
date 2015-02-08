state_caps_deck = Deck.create!(name: "U.S. State Capitals")
Card.create!(question: "What is the capital of Alabama?", answer: "Montgomery", deck: state_caps_deck)
Card.create!(question: "What is the capital of Illinois?", answer: "Springfield", deck: state_caps_deck)
Card.create!(question: "What is the capital of California?", answer: "Sacramento", deck: state_caps_deck)
Card.create!(question: "What is the capital of Texas?", answer: "Austin", deck: state_caps_deck)
Card.create!(question: "What is the capital of New York?", answer: "Alabama", deck: state_caps_deck)

albums = Deck.create!(name: "Albums and Musicians")
Card.create!(question: "Which artist made the album 'Thriller'?", answer: "Michael Jackson", deck: albums)
Card.create!(question: "Which artist made the album 'Rubber Soul'?", answer: "The Beatles", deck: albums)
Card.create!(question: "Which artist made the album 'Rumours'?", answer: "Fleetwood Mac", deck: albums)
Card.create!(question: "Which artist made the album 'Dark Side of the Moon'?", answer: "Pink Floyd", deck: albums)
Card.create!(question: "Which artist made the album 'Yeezus'?", answer: "Kanye West", deck: albums)

hockey = Deck.create!(name: "Hockey Teams and Cities")
Card.create!(question: "Which NHL team plays in the city of Los Angeles?", answer: "The Kings", deck: hockey)
Card.create!(question: "Which NHL team plays in the city of Chicago?", answer: "The Blackhawks", deck: hockey)
Card.create!(question: "Which NHL team plays in the city of New York City?", answer: "The Rangers", deck: hockey)
Card.create!(question: "Which NHL team plays in the city of Montreal?", answer: "The Canadians", deck: hockey)
Card.create!(question: "Which NHL team plays in the city of Dallas?", answer: "The Stars", deck: hockey)

rappers = Deck.create!(name: "TV Shows and Rappers")
Card.create!(question: "", answer: "", deck:)
Card.create!(question: "", answer: "", deck:)
Card.create!(question: "", answer: "", deck:)
Card.create!(question: "", answer: "", deck:)
Card.create!(question: "", answer: "", deck:)



User.create!(name: "Gabi Voicu", email: "gabi@dbc.com", password: "1234")
User.create!(name: "Jane Kim", email: "jane@dbc.com", password: "1234")
User.create!(name: "Matt Gray", email: "matt@dbc.com", password: "1234")
