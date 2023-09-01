require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #index' do
    it 'assigns all cities to @cities' do
      city1 = create(:city)
      city2 = create(:city)

      get :index

      expect(assigns(:cities)).to match_array([city1, city2])
    end
  end

  describe 'GET #search' do
    it 'assigns the correct values to instance variables' do
      state = create(:state)
      city = create(:city, state: state, name: 'Example City')

      get :search, params: { state: state.id, name_city: 'Example' }

      expect(assigns(:selected_state_id).to_s).to eq(state.id.to_s)
      expect(assigns(:name_city)).to eq('Example')
      expect(assigns(:filtered_cities)).to eq([city])
    end

    it 'assigns the correct values with empty name_city' do
      state = create(:state)
      city = create(:city, state: state, name: 'Example City')

      get :search, params: { state: state.id, name_city: '' }

      expect(assigns(:selected_state_id).to_s).to eq(state.id.to_s)
      expect(assigns(:name_city)).to eq('')
      expect(assigns(:filtered_cities)).to eq([city])
    end

    it 'assigns no filtered_cities with invalid state_id' do
      get :search, params: { state: 999, name_city: 'Example' }

      expect(assigns(:filtered_cities)).to be_empty
    end

    it 'assigns no filtered_cities with no matching city' do
      state = create(:state)

      get :search, params: { state: state.id, name_city: 'Non-Existent City' }

      expect(assigns(:filtered_cities)).to be_empty
    end
  end
end
