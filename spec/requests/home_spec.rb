require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'Get /' do
    it 'renders a successful response' do
      get root_url
      expect(response).to be_successful
    end
  end
end
