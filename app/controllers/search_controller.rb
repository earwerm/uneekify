class SearchController < ApplicationController
  def lookup
  end

  def return

    @genre = params[:genre]
    @danceability = params[:danceability]
    @min_bpm = params[:min_bpm]
    @results_number = params[:results_number]
    @url = "http://developer.echonest.com/api/v4/song/search?api_key=9JJUAQS0ZBF2SK5VU&style=#{@genre}&min_danceability=#{@danceability}&min_tempo=#{@min_bpm}&results=#{@results_number}"

    response = HTTParty.get(@url) # Look ma, no JSON!
    @songs = response['response']['songs']
  end
end