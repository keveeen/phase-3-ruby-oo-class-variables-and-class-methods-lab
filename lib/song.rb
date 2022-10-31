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

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        # @@genres.tally

        genre_tally = {}

        @@genres.each do |genre|

            if genre_tally[genre]
                genre_tally[genre] += 1
            else
                genre_tally[genre] = 1
            end

        end
        genre_tally

    end

    def self.artist_count
        @@artists.tally
    end



end