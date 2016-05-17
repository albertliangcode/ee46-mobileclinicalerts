require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
  redirect '/create_message/'
end

get '/create_message/' do
  erb :message_form
end

post '/create_message/' do
  phoneList = params[:phone] || "No numbers."
  messageString = params[:message] || "No message."

  erb :index, :locals => {'phone' => phoneList, 'message' => messageString}
end
