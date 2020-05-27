class MoviesController < ApplicationController
  def last
    render({ :template => "movie_templates/cb.html.erb" })
  end
  
  def under_55
    render({ :template => "movie_templates/pre2000.html.erb" })
  end

  def francis
    render({ :template => "movie_templates/pre2000.html.erb" })
  end

end
