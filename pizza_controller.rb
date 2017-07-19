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
get '/pizzas/new' do
  erb(:new)
end

#create
post '/pizzas' do
  @pizza = Pizza.new(params)
  @pizza.save
  redirect to '/pizzas'
end 

#show
get '/pizzas/:id' do
  @pizza = Pizza.find(params[:id])
  erb(:order)
end

#edit
get '/pizzas/:id/edit' do
  @pizza = Pizza.find(params[:id])
  erb(:edit)
end

#update
post '/pizzas/:id' do
  @pizza = Pizza.new(params)
  @pizza.update
  redirect to '/pizzas'
end

#destroy
post '/pizzas/:id/delete' do
  @pizza1 = Pizza.find(params[:id])
  @pizza1.delete
  redirect to '/pizzas'
end

