#encoding: cp866
hash = {'cat'=> ['1111', '222'], 'dog'=> ['111', '222', '333'],
	'gerl' => ['111111111']
	}

loop do 
	print '������ ᫮��: '
	user = gets.strip
	
	if user == ''
		break
	end

	arr = hash[user]
	
	puts "������⢮ ��ॢ���� #{arr.length}"
	puts '��ॢ�� ᫮��: '
	puts arr 
	 
end