#encoding: cp866

print "������ �: "
a = gets.strip.to_f

print "������ B: "
b = gets.strip.to_f

print "�� �㤥� ������? (+ - * /) "
vol = gets.strip

result = 0

if vol == "/" && b == 0 
	puts "�� ���� ������ �����!"
	exit
end

if vol == "+"
	result = a + b
end

if vol == "-"
	result = a - b
end

if vol == "*"
	result = a * b
end

if vol == "/"
	result = a / b
end

puts "�������: #{result}"



