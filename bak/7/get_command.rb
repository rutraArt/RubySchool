#encoding: cp866


def get_command
	x = rand(1..4)
	if x == 1
		cmd = :left
	elsif x == 2
		cmd = :right
	elsif x == 3
		cmd = :up
	elsif x == 4
		cmd = :down
	end
	cmd
end

command = get_command

puts "����祭�� �������: #{command}"

if command == :left
	puts "����� ���� �����"
elsif command == :right
	puts "����� ���� ��ࠢ�"
elsif command == :up
	puts "����� ���� �����"
elsif command == :down
	puts "����� ���� ����"
end
