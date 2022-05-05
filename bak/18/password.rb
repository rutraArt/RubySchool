require 'net/http'
require 'uri'

# не обязательно обьек uri, может быть любой!
def is_wrong_password? password
	uri  = URI.parse 'http://localhost:4567/login'
	response = Net::HTTP.post_form(uri, :login => "aaa", :password => "bbb").body
	response.include? "Wrong username"
end

puts is_wrong_password? 'dmdmdmd'
