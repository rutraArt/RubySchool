#encoding: cp866

book = {'dog' => 'ᮡ���', 'cat' => '��誠', 'girl' => '����誠'}

loop do
	print '������ ᫮�� ��� ��ॢ��� (��� ��室� Enter): '
	key = gets.strip

	
	if key == ''
		print '��� ��ॢ���'
		break
	end

	puts book[key]
end