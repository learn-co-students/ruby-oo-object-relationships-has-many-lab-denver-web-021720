require "pry"
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        add_song(Song.new(name))
    end

    def songs 
        @songs
    end

    def self.song_count
        Song.all.count
    end
end