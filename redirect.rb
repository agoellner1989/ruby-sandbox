require 'sinatra'

get '/redirect' do
    redirect 'http://google.com'
end