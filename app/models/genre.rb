class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    genre.songs.length
    # return the number of songs in a genre
  end

  def artist_count
    genre.artist.length
    # return the number of artists associated with the genre
  end

  def all_artist_names
    genre.artists map do |artist|
      artist.name
    end
    # return an array of strings containing every musician's name
  end
end
