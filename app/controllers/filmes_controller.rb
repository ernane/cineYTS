class FilmesController < ApplicationController
  def index
    params[:limit] = 6
    params[:page] = 5
    @filmes = Filme.all(params)
  end
end