require 'pry'

class Artist
    
    attr_accessor :song, :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
        @songs << new_song
    end

    def self.song_count
        Song.all.length
    end


end