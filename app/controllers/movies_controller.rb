class MoviesController < ApplicationController
  def casablanca
    c = Movies.where


    render({ :template => "movie_templates/cb.html.erb" })
  end
  
  def before2k
    render({ :template => "movie_templates/pre2000.html.erb" })
  end

end
