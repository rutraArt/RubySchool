class Artist
		attr_reader :name, :albums

	def initialize name
		@name = name
		@albums = []
	end	

	def add_album album
		@albums << album
	end
end

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

artist = Artist.new 'Кровосток'

album1 = Album.new 'Гантеля'
album2 = Album.new 'Наука'

artist.add_album album1
artist.add_album album2

song1 = Song.new 'Интро', 1.48
song2 = Song.new 'Гантеля', 2.45
song3 = Song.new 'Быть плохим', 3.15

song4 = Song.new 'Наука', 2.57
song5 = Song.new 'Зашел, вышал', 3.49

album1.add_song song1
album1.add_song song2
album1.add_song song3

album2.add_song song4
album2.add_song song5

puts "Исполнитель: #{artist.name}"

#puts album.songs[2].name  - Пример вывода из массива конпетной песни. 

artist.albums.each do |al|
	puts '------------------'

	puts "Альбом: #{al.name}"

	al.songs.each do |song|
		puts "Песня: #{song.name}!\nДлительность: #{song.duration}"
	end
end