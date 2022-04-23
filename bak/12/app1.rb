#encoding: cp866
hash = {'cat'=> ['1111', '222'], 'dog'=> ['111', '222', '333'],
	'gerl' => ['111111111']
	}

x = 0

hash.each_value do |v|
	#puts "#{v}"
	x = x + v.size
end

puts x 