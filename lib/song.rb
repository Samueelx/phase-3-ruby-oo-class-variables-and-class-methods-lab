class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    #class method to return the number of songs created
    def self.count
        @@count
    end
    #returns an array of all the genres of the existing songs
    def self.genres
        return @@genres.uniq
    end
    #returns a unique array of artists of existing songs
    def self.artists
        return @@artists.uniq
    end
    #A method that returns a hash in which the keys are the names of each genre
    def self.genre_count
        hash = {};
        return @@genres.tally(hash)
    end
    def self.artist_count
        hash = {}
        return @@artists.tally(hash)
    end
end