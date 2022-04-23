class Album
	attr_reader :name, :songs

	def initialize name
		@name = name
		@songs = []
	end	

	def add_song song
		@songs << song
	end
end

class Song
	attr_reader :name, :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end
end

album = Album.new 'Гантеля'

song1 = Song.new 'Интро', 1.48
song2 = Song.new 'Гантеля', 2.45
song3 = Song.new 'Быть плохим', 3.15

album.add_song song1
album.add_song song2
album.add_song song3

puts "Альбом: #{album.name}"

#puts album.songs[2].name  - Пример вывода из массива конпетной песни. 

album.songs.each do |song|
	puts "Песня: #{song.name}!\nДлительность: #{song.duration}"
end
