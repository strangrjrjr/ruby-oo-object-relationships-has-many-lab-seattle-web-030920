class Song

    attr_accessor :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def artist=(my_artist)
        @artist = my_artist
        my_artist.songs << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def artist_name
        if self.artist != nil
            self.artist.name
        else
            nil
        end
    end
end