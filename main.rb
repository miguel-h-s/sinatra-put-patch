require "sinatra"
require "sinatra/reloader" if development?

use Rack::MethodOverride

$nome = "Miguel"
$idade = "13"
$cidade = "São Paulo"

get '/' do
  erb :index
end

patch '/perfil' do
  $nome = params[:nome] if params[:nome] != ""
  redirect '/'
end

get '/perfil' do
  erb :nome
end

put '/tudo' do
  $nome = params[:nome]
  $idade = params[:idade]
  $cidade = params[:cidade]
  redirect '/'
end

get '/tudo' do
  erb :tudo
end