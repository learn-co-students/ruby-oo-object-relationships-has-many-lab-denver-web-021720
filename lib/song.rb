class Song
    attr_accessor :name
    attr_reader :artist
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end
    
    def artist=(artist)
        artist.songs << self
        @artist = artist 
    end

    def artist_name
        self.artist == nil ? nil : self.artist.name
    end
end
