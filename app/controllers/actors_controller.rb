class MoviesController < ApplicationController

  def morgan
    render({ :template => "actor_templates/freeman.html.erb" })
  end

end
