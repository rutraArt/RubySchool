module Human 
	class Manager
		def say_hi
			puts 'Hi'
		end
	end

	class Hipster
		def say_hi
			puts 'Hiiii, yo!'
		end
	end

	class Jessie_Pinkman
		def say_hi
			puts 'Hi, bitch!'
		end
	end
end

human = Human::Jessie_Pinkman.new

human.say_hi
