class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photograph|
      photograph.id == id
    end
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all do |photograph|
      photograph.artist_id == artist.id
    end
  end

  def artists_with_multiple_photographs
    # find all artists whose id matches the artist_id
    # of more than one photograph
    # call on artist id and return an array of those artist objects
    # use find_photographs_by_artist method?

    photograph_artist_ids = @photographs.map do |photograph|
      photograph.artist_id
    end

    artist_ids = @artists.map do |artist|
      artist.id
    end

    require 'pry'; binding.pry
    # @artists.find_all do |artist|
    #   (artist.id == photograph.artist_id) > 1
    # end
  end

  def photographs_taken_by_artist_from(country)
    # find all photographs whose artist id matches the id of
    # the artist whose hash of attributes contains the string
    
    artist_countries = @artists.map do |artist|
      artist.country
    end
    photograph_artist_ids = @photographs.map do |photograph|
        photograph.artist_id
    end

    @photographs.find_all do |photograph|
      photograph.artist_id
    end
  end
end
