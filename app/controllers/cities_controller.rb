class CitiesController < ApplicationController
  before_action :load_states

  def index
    @cities = City.all
  end

  def search
    @selected_state_id = params[:state]
    @query = params[:query]
    @filtered_cities = filter_cities
  end

  private

  def load_states
    @states = State.all
  end

  def filter_cities
    cities = City.where(state_id: @selected_state_id)
    cities = cities.where('name ILIKE ?', "%#{@query}%") if @query.present?
    cities
  end
end
