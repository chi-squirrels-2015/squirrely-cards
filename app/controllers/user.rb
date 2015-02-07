get '/login' do
  erb :login
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect "/games"
  else
    redirect "/login"
  end
end

get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.create!(name: params[:name], email: params[:email], password: params[:password])
  if @user
    session[:user_id] = @user.id
    redirect "/games"
  else
    redirect "/signup"
  end
end
