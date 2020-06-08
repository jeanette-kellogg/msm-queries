class DirectorsController < ApplicationController
  def last
    render({ :template => "movie_templates/cb.html.erb" })
  end
  
  def under_55
    render({ :template => "movie_templates/pre2000.html.erb" })
  end

  def francis
    render({ :template => "movie_templates/pre2000.html.erb" })
  end

   def last
      d = Director.order({:dob => :desc}).first
      @YoungestName = d.name
      @YoungestDOB = Director.order({:dob => :desc}).first.dob
      render({ :template => "movie_templates/youngest.html.erb" })
  end

end
