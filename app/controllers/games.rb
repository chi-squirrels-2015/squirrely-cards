before do
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

get "/games" do
  @games = @current_user.games
  erb :"games/index"
end

get "/games/new" do
  @decks = Deck.all
  erb :"games/new"
end

post "/games" do
  deck = Deck.find(params[:deck_id])
  game = Game.new(deck: deck, user: @current_user)

  if game.save
    redirect "/games/#{game.id}/start"
  else
    redirect "/games/new"
  end
end

get "/games/:id/start" do
  game = Game.find(params[:id])
  first_card_id = game.deck.cards.first.id

  if game.user == @current_user
    redirect "/games/#{game.id}/cards/#{first_card_id}"
  else
    flash[:notice] = "You don't have access to that game."
    redirect "/games/new"
  end
end

get "/games/:id/finish" do
  @game = Game.find(params[:id])

  unless @game.user == @current_user
    redirect "/games/new"
  end

  erb :"games/finish"
end
