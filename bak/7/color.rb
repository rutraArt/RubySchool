#encoding: cp866
                              
#colors = []
#
#loop do
#  print '�������� ������ 梥�: '
#  value = gets.strip
#  break if value == 'stop'
#
#  puts "��� �����襭�� ������ 'stop' ���� ������� �� 梥�. "
#  colors << value.split
#end
#
#puts colors 

value = []

while true
	print "������ ��� ��� 梥� (��� �����襭�� stop): "
	color = gets.strip

	if color == "stop"
		puts value.uniq
	        exit
	end
	value << color                            	
end

