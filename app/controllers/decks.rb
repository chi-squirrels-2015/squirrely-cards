get "/decks" do
  session[:correct_answer] = nil
  session[:answer] = nil
  @decks = Deck.all
  erb :"decks/index"
end

# get "/decks/:id" do
#   @deck = Deck.find(params[:id])
#   erb :"decks/show"
# end

# get "/decks/:name/cards" do
#   @deck = Deck.find_by(name: params[:name])
#   erb :"decks/cards"
# end

# get "/decks/:id/finish" do
#   @deck = Deck.find(params[:id])
#   erb :"decks/finish"
# end