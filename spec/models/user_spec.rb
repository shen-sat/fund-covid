require 'rails_helper'

RSpec.describe User, type: :model do
  context 'factory' do
  	subject(:user) { build(:user) }	

  	it { is_expected.to be_valid }
  end
  
  context 'model' do
  	subject(:user) { build(:user, email: email, password: pass)}
    let(:pass) { 'test123' }
    let(:email) { 'test@gmail.com' }

    context 'without email' do
      let(:email) { nil }  

      it { is_expected.to_not be_valid }
    end

    context 'without password' do
      let(:pass) { nil }

      it { is_expected.to_not be_valid }
    end
  end
end
