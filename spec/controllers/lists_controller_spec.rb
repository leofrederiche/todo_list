require 'rails_helper'

describe ListsController do
    it 'Verify array <lists> in Index' do
      list = FactoryGirl.create(:list)
      get :index
      expect(assigns(:lists)).to eq([list])
    end
end
