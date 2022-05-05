require 'sinatra'

get '/' do 
	erb :index
end

get '/contacts' do
	@title = "Contacts"
	@message = "Artur: +375-29-717-79-59"

	erb :message
end

get '/faq' do
  	@title = "FAQ"
	@message = "Научные разработки"

	erb :message
end

get '/something' do
  	@title = "Something"
	@message = "А что тут еще добавить ?!"
	
	erb :message
end


post '/' do
	@login = params[:aaa]
	@password = params[:bbb]

	if @login == 'admin' && @password == 'secret'
		erb :welcome
	elsif @login == 'admin' && @password == 'admin'
		@wrong = "Haha, nice try! Access denied!"	 
		erb :index
	else
		@wrong = "Wrong username or password, please try again!"	 
		erb :index
	end
end
