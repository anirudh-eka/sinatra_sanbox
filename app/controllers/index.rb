get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"

  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @cool_phrase = params[:user_input]
  @radio_button = params[:group1]

  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @cool_phrase2 = params[:user_input]
  @nice = params[:option1] ? true : false 
  p @nice
  @mean = params[:option2] ? true : false
  p @mean
  erb :post_cool_url
end

# get 'cool_verifier' do
#   puts "hi"
#   puts "[LOG] Getting /cool_url"
#   puts "[LOG] Params: #{params.inspect}"

#   erb :get_cool_verifier
# end

get '/cool_verifier' do
  "Hello World"
  "Params: #{params.inspect}"
  @that_cool = params[:drop]

  erb :get_cool_verifier_url
end