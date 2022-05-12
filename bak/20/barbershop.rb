require 'sinatra'

get '/' do
	erb :index
end

get '/admin' do
	erb :admin
end

post '/' do
	@user_name = params[:user_name]
	@phone = params[:phone]
	@date_time = params[:date_time]

	@title = 'Thank you!'
	@message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time}"

	f = File.open './public/user.txt', 'a'
	f.write "User: #{@user_name}, Phone: #{@phone}, Date and time #{@date_time}.\n"

	erb :message
end

post '/admin' do
	@login = params[:login]
	@password = params[:password]

	if @login == 'ruby' && @password == 'rails'
		@title = 'Список посетителей!'

		@file = File.open("./public/user.txt", "r")

		erb :result
	else
		@wrong = "Wrong username or password, please try again!"	 
		erb :admin
	end
end
