get '/' do
  @anagram = params[:word]
  # Look in app/views/index.erb
  erb :index
  # params
end


post '/word' do
    response = Word.anagrams(params[:user_input])
    response = response.reduce(" ") { |str, obj|  str << obj.word + " " }.strip
    redirect to ("/?word=#{response}")

end

