#encoding: cp866

puts '����쪮 ࠧ �㤥� ����� ?'

vol = gets.to_i

puts '������ ��� ���� �᫮: '

f = gets.to_i
 

1.upto(vol) do |i|
	x = rand(1..10)
	puts "��ࠥ� #{i} ࠧ"
	if x == f
		puts '����ࠢ�塞 �� �멣ࠫ� !!!'
		exit
	else
		puts '� ��㣮� ࠧ !' 
	end
end

	