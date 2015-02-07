get "/decks" do
  @decks = Deck.all
  erb :"decks/index"
end

get "/decks/:id/start" do
  @deck = Deck.find(params[:id])
  redirect "/decks/#{@deck.id}/cards/#{@deck.cards.first.id}"
end

# get "/decks/:name/cards" do
#   @deck = Deck.find_by(name: params[:name])
#   erb :"decks/cards"
# end

get "/decks/:id/finish" do
  @deck = Deck.find(params[:id])
  erb :"decks/finish"
end
