#encoding: utf-8
require 'sqlite3'
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
# require 'pony'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	@error = "something wrong!"
	erb :about
end 

get '/visit' do
	erb :visit 
end

post '/visit' do
	@hero = params[:hero]
	@username = params[:username]
	@phone = params[:phone]
	@date = params[:date]
	@color = params[:color]

	hh = { :username => 'Введите имя!',
			:phone => 'Введите номер телефона!',
			:date => 'Введите дату и время!' }

			# для каждой пары ключ-значение 

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
		return erb :visit
	end

	#   Как еще вариант !!!
	# hh.each do |key, value|
	# 	if params[key] == ''

	# 		@error = hh[key]

	# 		return erb :visit 
	# 	end
	# end

	@title = 'Спасибо! Приходи не бойся, уходи не плач!'
	@message = "Дорогой (ая) #{@username}, мы ждем Вас #{@date}, Вы записанны к #{@hero}, странный выбор 
	но голова будет покрашена в #{@color}."

	f = File.open './public/user.txt', 'a'
	f.write "User: #{@username}, Phone: #{@phone}, Date and time: #{@date}, Парикмахер: #{@hero}\n"

	erb :message
end

get '/contacts' do 
	erb :contacts
end

post '/contacts' do
	@text = params[:text]
	@mail = params[:mail]

	@title = 'Спасибо за Ваш отзыв!'
	@message = "Надеимся что тут написанно хорошее!\n#{@text} "

	f_con = File.open './public/contacts.txt', 'a'
	f_con.write "Email: #{@mail}, Отзыв: #{@text}"

	
	# Pony.mail(
	#   :name => params[:name],
	#   :mail => params[:mail],
	#   :body => params[:body],
	#   :to => 'everinartdik@gmail.com',
	#   :subject => params[:name] + " has contacted you",
	#   :body => params[:message],
	#   :port => '587',
	#   :via => :smtp,
	#   :via_options => { 
	#     :address              => 'smtp.gmail.com', 
	#     :port                 => '587', 
	#     :enable_starttls_auto => true, 
	#     :user_name            => 'lumbee', 
	#     :password             => 'p@55w0rd', 
	#     :authentication       => :plain, 
	#     :domain               => 'localhost.localdomain'
	#   })
	# redirect '/success' 

	erb :message 
end
