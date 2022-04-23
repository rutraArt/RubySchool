#encoding: cp866
                              
#colors = []
#
#loop do
#  print 'Пожалуйста напишите цвета: '
#  value = gets.strip
#  break if value == 'stop'
#
#  puts "Для завершения напишите 'stop' либо добавьте еще цвета. "
#  colors << value.split
#end
#
#puts colors 

value = []

while true
	print "ВВедите ваш любимый цвет (для завершения stop): "
	color = gets.strip

	if color == "stop"
		puts value.uniq
	        exit
	end
	value << color                            	
end

