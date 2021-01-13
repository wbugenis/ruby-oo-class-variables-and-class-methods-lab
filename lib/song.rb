class Song
    
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.uniq.map{ |genre| genre_hash[genre] = 0 }
        genre_hash.each_key{ |key| 
            genre_hash[key] = @@genres.find_all{ |genre| key == genre}.length
        }
    end

    def self.artist_count
        artist_hash = {}
        @@artists.uniq.map{ |artist| artist_hash[artist] = 0 }
        artist_hash.each_key{ |key| 
            artist_hash[key] = @@artists.find_all{ |artist| key == artist}.length
        }
    end
        
end