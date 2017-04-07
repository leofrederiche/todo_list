require 'rails_helper'

describe List do
  it 'Create a valid list' do
    expect {
      list = FactoryGirl.build(:list)
      list.save
    }.to change(List, :count).by(1)
  end

  it 'Create a invalid list' do
    expect {
      list = FactoryGirl.build(:invalid_list)
      list.save
    }.to_not change(List, :count)
  end
end
