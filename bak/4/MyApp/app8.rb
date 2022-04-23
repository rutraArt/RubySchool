#100000.times{ print rand(30..120).chr }
str = "Hello"
10.times do |x|
	print str
	1.upto(x) do
		print "!"
	end
	puts
end