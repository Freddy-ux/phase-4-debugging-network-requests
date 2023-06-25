class MoviesController < ApplicationController
  def create
  end

  def index
    movies = Movie.all
    render json: movies
  end
end

Rails.application.routes.draw do
  resources :movies, only: [:index, :create, :update, :destroy]
end
