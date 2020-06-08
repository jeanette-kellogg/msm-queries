class MoviesController < ApplicationController
  
  def casablanca
    c = Movie.where ({ :Title => "Casablanca" })
    @Year = c.at(0).year
    @Since = Time.now.year - @Year
     render({ :template => "movie_templates/cb.html.erb" })
  end
  
  def before2k
      b42 = Movie.where("Year < ?", 2000).order(:year)
      looptimes = b42.count
      start = 0
      looptimes.times do |moviesdisplay|
        find = b42.at(start)
        @Year = find.year.to_s
        @Title = find.title
        text_string = @Title + " (" + @Year+ ")"
        p text_string  
        start = start +1 
      end
      render({ :template => "movie_templates/pre2000.html.erb" })
  end


end