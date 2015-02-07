# get "/cards" do
#   @cards = Cards.all
#   erb :"cards/index"
# end

get "/decks/:deck_id/cards/:id" do
  @card = Card.find(params[:id])
  deck_of_cards = @card.deck.cards
  current_card_index = deck_of_cards.index(@card)
  next_card = deck_of_cards.at(current_card_index + 1)

  @next_card_id = next_card.id if next_card

  erb :"cards/show"
end

post "/decks/:deck_id/cards/:id/guess" do
  @card = Card.find(params[:id])
  deck_of_cards = @card.deck.cards
  current_card_index = deck_of_cards.index(@card)
  next_card = deck_of_cards.at(current_card_index + 1)

  @next_card_id = next_card.id if next_card

  guess = params[:guess]

  if guess
    @correct_answer = (@card.answer == guess)
  end

  erb :"cards/show"

  # if next_card
  #   redirect "/decks/#{@card.deck.id}/cards/#{next_card.id}"
  # else
  #   erb :"decks/finish"
  # end
end