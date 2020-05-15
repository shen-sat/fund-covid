require 'rails_helper'

RSpec.describe 'User', type: :request do
  describe 'GET #new' do

    it 'is successful' do
      get new_user_registration_path

      expect(response).to be_successful
      expect(response.body).to include('Sign up')
    end
  end
end