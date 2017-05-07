require 'rails_helper'

RSpec.describe AdminUser do
  it 'has valid factory' do
    expect(FactoryGirl.create(:admin_user)).to be_valid
  end
end
