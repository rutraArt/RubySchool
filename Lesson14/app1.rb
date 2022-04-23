class Book
	def initialize
		@hh = {}
		@last_person = ''
	end

	def add_person options

		@last_person = options[:name]

		puts 'Already exists!' if @hh[options[:name]] #TAK KPYTO !

		@hh[options[:name]] = options[:age]
		
	end

	def show_hash
		@hh.keys.each do |k|
			v = @hh[k]
			puts "Hi #{k}, your age #{v}"
		end
	end

	def last_person
		@last_person
	end

	# loop do
	# 	print 'Enter your name: '
	# 	u_name = gets.strip.capitalize

	# 	if u_name == ''
	# 		show_hash
	# 		sleep 0.5
	# 		exit
	# 	end

	# 	print 'Enter your age: '
	# 	u_age = gets

	# 	options = { :name => u_name, :age => u_age }	
	# end
end

b = Book.new

b.add_person :name => 'Mike', :age => 50 
b.add_person :name => 'Jessie', :age => 25 
b.add_person :name => 'Badger', :age => 24 
b.show_hash

puts b.last_person
