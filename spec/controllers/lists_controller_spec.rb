require 'rails_helper'

describe ListsController do
    it '#INDEX - Verify array <lists> in Index' do
      list = FactoryGirl.create(:list)
      get :index
      expect(assigns(:lists)).to eq([list])
    end

    it '#NEW Verify variable <list> to create new list' do
      get :new
      expect(assigns(:list)).to be_a_new(List)
    end
end
