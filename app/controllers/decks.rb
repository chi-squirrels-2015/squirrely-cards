DECKS = [{id: 1, name: "State Capitals"}, {id: 2, name: "Basic Math"}]

get "/decks" do
  @decks = Deck.all
  erb :"decks/index"
end

get "/decks/:name" do
  @deck = Deck.find_by(name: params[:name])
  erb :"decks/show"
end

get "/decks/:name/cards" do
  @deck = Deck.find_by(name: params[:name])
  erb :"decks/cards"
end