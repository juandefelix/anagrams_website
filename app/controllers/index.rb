get '/' do
  @anagram = params[:word]
  # Look in app/views/index.erb
  erb :index
  # params
end


post '/word' do
    response = Word.anagrams(params[:user_input])
    response = response.join(", ").upcase

    redirect to ("/?word=#{response}")

end

