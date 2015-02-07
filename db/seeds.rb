state_caps_deck = Deck.create!(name: "U.S. State Capitals")

Card.create!(question: "What is the capital of Alabama?", answer: "Montgomery", deck_id: state_caps_deck.id)
Card.create!(question: "What is the capital of Illinois?", answer: "Springfield", deck_id: state_caps_deck.id)
Card.create!(question: "What is the capital of California?", answer: "Sacramento", deck_id: state_caps_deck.id)

User.create!(name: "Gabi Voicu", email: "gabi@dbc.com", password_hash: "1234")
User.create!(name: "Jane Kim", email: "jane@dbc.com", password_hash: "1234")
User.create!(name: "Matt Gray", email: "matt@dbc.com", password_hash: "1234")
