#encoding: cp866

print '����� �㬬� �㤥� �⪫��뢠�: '
sum = gets.to_f

print '����� ������⢮ ����楢: '
mons = gets.to_i

s = 0

1.upto(mons) do |x|
	s = s + sum
	puts "���������� �� #{x} ����ᥢ: #{s}"
end
