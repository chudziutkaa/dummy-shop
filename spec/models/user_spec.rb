require 'rails_helper'

RSpec.describe User do
  it 'has valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is invalid without stret' do
    expect(FactoryGirl.build(:user, street: nil)).to be_invalid
  end

  it 'is invalid without building_nr' do
    expect(FactoryGirl.build(:user, building_nr: nil)).to be_invalid
  end

  it 'is invalid without post_code' do
    expect(FactoryGirl.build(:user, post_code: nil)).to be_invalid
  end

  it 'is invalid without city' do
    expect(FactoryGirl.build(:user, city: nil)).to be_invalid
  end

  it 'is invalid when street contains numbers' do
    expect(FactoryGirl.build(:user, street: '5th Avenue')).to be_invalid
  end

  it 'is invalid when building_nr is lower or equals 0' do
    expect(FactoryGirl.build(:user, building_nr: -1)).to be_invalid
    expect(FactoryGirl.build(:user, building_nr: 0)).to be_invalid
  end

  it 'is ivalid when post_code does not have polish format' do
    expect(FactoryGirl.build(:user, post_code: '5-1234')).to be_invalid
  end

  it 'is invalid when city contains numbers' do
    expect(FactoryGirl.build(:user, city: 'City123')).to be_invalid
  end

  it 'is invalid with incorrect email format' do
    expect(FactoryGirl.build(:user, email: 'userwithoutat')).to be_invalid
  end
end
