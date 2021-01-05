class Song

    attr_accessor :name, :artist, :genre
    @@count = 0 # class var - ticker keeps track of songs
    @@artists = [] # class var - empty array keeps track of artists
    @@genres = [] # class var - empty array keeps track of genres
  
    def initialize(song_name,artist,genre) # auto creation for new instances
      @name = song_name
      @artist = artist
      @genre = genre
      @@count += 1 # increments every time a new instance is created
      @@artists << artist # pushes the new artist into the artist array upon initialization
      @@genres << genre # pushes the new genre into genre array
    end
  
    def self.count # class method for @@ class var count
      @@count
    end
  
    def self.artists # class method for class var # will show us all of the artists of existing songs
      @@artists.uniq # unique artists only, no repeats
    end
  
    def self.genres # class method for class var. # will show us all of the genres of existing songs
      @@genres.uniq # unique genres only
    end
  
    def self.genre_count # keeps track of the number of songs of each genre it creates
      genre_count = Hash.new(0) # creates new hash
      @@genres.each {|genre| genre_count[genre] += 1} # takes each genre from class variable and makes it a key in genre_count hash and then increments it when it repeats
      genre_count # returns genre_count
    end
  
    def self.artist_count # keeps track of number of songs each artist is responsible for
      artist_count = Hash.new(0) # new hash
      @@artists.each {|artist| artist_count[artist] += 1} # adds each new artist as a key and increments if same artist added again
      artist_count
    end
end
  
  

# keeps track of number of songs it creates
# each song has a name, an artist and a genre