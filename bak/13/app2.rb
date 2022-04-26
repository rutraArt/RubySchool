@hh = {}

def add_person options
	puts 'Already exists!' if @hh[options[:name]] #TAK KPYTO !

#	if @hh[name]
#		puts 'Already exists!'
#	end 
	

	@hh[options[:name]] = options[:age]
	
end

def show_hash
	@hh.keys.each do |k|
		v = @hh[k]
		puts "Hi #{k}, your age #{v}"
	end
end

loop do
	print 'Enter your name: '
	u_name = gets.strip.capitalize

	if u_name == ''
		show_hash
		sleep 0.5
		exit
	end

	print 'Enter your age: '
	u_age = gets

	options = { :name => u_name, :age => u_age }
	
	add_person options
	
end