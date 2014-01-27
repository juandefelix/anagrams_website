get '/' do
  @anagram = params[:word]
  # Look in app/views/index.erb
  erb :index
end


post '/word' do
    response = Word.anagrams(params[:user_input])

    redirect to ("/?word=#{response}")

end

