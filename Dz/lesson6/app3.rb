#encoding: cp866
print '����� �㬬� �㤥� �⪫��뢠�� � �����: '
sum = gets.to_f

print '����쪮 ��� �㤨� ������: '
years = gets.to_i

x = 0


1.upto(years) do |i|
	1.upto(12) do |y|
		x = x + sum
		puts "��� #{i} ����� #{y}, �⫮�����: #{x}$."
	end 
end