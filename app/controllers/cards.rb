get "/cards" do
  @cards = Cards.all
  erb :"cards/index"
end

get "/decks/:name/cards/:id" do
  @card = Card.find(params[:id])
  erb :"cards/show"
end

post "/deck/:name/cards/:id/guess" do
  @card = Card.find(params[:id])
  deck_of_cards = @card.deck.cards
  current_card_index = deck_of_cards.index(@card)
  next_card_id = deck_of_cards.at(current_card_index + 1).id

  guess = params[:guess]

  if @card.answer == guess
    session[:message] = "You guessed correct!"
  else
    session[:message] = "You guessed #{guess}, but the correct answer was #{@card.answer}."
  end

  redirect "/deck/#{@card.deck.name}/cards/#{next_card_id}"
end