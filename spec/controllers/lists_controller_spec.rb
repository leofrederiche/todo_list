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

    describe '#CREATE' do
      context 'Pass a valid params' do
        it 'Sending params' do
          expect {
            post :create, list: FactoryGirl.attributes_for(:list)
          }.to change(List, :count).by(1)
        end

        it 'Redirect to show_list' do
          post :create, list: FactoryGirl.attributes_for(:list)
          should redirect_to List.last
        end

        it 'Verify flash[:notice]' do
          post :create, list: FactoryGirl.attributes_for(:list)
          expect(flash[:notice]).to be_present
        end
      end

      context 'Pass a invalid params' do
        it 'Sending params' do
          expect {
            post :create, list: FactoryGirl.attributes_for(:invalid_list)
          }.to_not change(List, :count)
        end

        it 'Redirect to show_list' do
          post :create, list: FactoryGirl.attributes_for(:invalid_list)
          should render_template :new
        end

        it 'Verify flash[:error]' do
          post :create, list: FactoryGirl.attributes_for(:invalid_list)
          expect(flash[:error]).to be_present
        end
      end
    end
end
