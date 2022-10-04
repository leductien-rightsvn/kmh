require 'rails_helper'

RSpec.describe Console::CategoriesController, type: :routing do
  describe 'routing' do
    let(:url) { "http://#{ENV.fetch('SUBDOMAIN_CONSOLE', nil)}.lvh.me:3000" }

    it 'routes to #index' do
      expect(get: "#{url}/categories").to route_to('console/categories#index', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #new' do
      expect(get: "#{url}/categories/new").to route_to('console/categories#new', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #show' do
      expect(get: "#{url}/categories/1").to route_to('console/categories#show', id: '1', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #edit' do
      expect(get: "#{url}/categories/1/edit").to route_to('console/categories#edit', id: '1', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #create' do
      expect(post: "#{url}/categories").to route_to('console/categories#create', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #update via PUT' do
      expect(put: "#{url}/categories/1").to route_to('console/categories#update', id: '1', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #update via PATCH' do
      expect(patch: "#{url}/categories/1").to route_to('console/categories#update', id: '1', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end

    it 'routes to #destroy' do
      expect(delete: "#{url}/categories/1").to route_to('console/categories#destroy', id: '1', subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil))
    end
  end
end
