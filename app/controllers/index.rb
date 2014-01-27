get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/word' do
  Word.anagrams(params[:user_input])
end
