require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/pizza.rb')

#index
get '/pizzas' do
  @pizzas = Pizza.all
  erb(:index)
end

#new
# post '/pizzas' do
#   @pizzas = Pizza.save
#   erb(:new)
# end

#create
# get '/pizzas/new' do
#   @pizzas = 

#show
get '/pizzas/:id' do
@pizzas = Pizza.find(params[:id])
erb(:order)
end


#edit

#update

#destroy
post '/pizzas/:id' do
  selected = params[:id]
  @pizza1 = Pizza.find(selected)
  # @pizza1.delete
  erb(:delete)
end

