#encoding: cp866


def get_command
	actions = [:left, :right, :up, :down]
	
	x = rand(0..3)
	
	return actions[x]
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