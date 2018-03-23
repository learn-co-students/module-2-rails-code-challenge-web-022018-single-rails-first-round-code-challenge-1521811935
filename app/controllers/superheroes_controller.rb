class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    # byebug
    @superhero = Superhero.find(params[:id])
    @superpower = Superpower.find(@superhero.superpower_id)
  end
end
