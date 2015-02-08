before do
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

get "/games/:game_id/cards/:id" do
  @game = @current_user.games.find(params[:game_id])
  @card = @game.cards.find(params[:id])

  erb :"cards/show"
end

post "/games/:game_id/cards/:id/guess" do
  game = @current_user.games.find(params[:game_id])
  card = game.cards.find(params[:id])

  current_deck_of_cards = game.cards
  current_card_index = current_deck_of_cards.index(card)
  next_card = current_deck_of_cards.at(current_card_index + 1)

  if params[:guess] == card.answer
    flash[:notice] = "You got the correct answer. Nice job!"
    Guess.create(game: game, card: card, correct: true)
  else
    flash[:notice] = "Your guess was incorrect. The correct answer is #{card.answer}."
    Guess.create(game: game, card: card, correct: false)
  end

  if next_card
    redirect "/games/#{game.id}/cards/#{next_card.id}"
  else
    redirect "/games/#{game.id}/finish"
  end
end
