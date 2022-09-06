require 'rails_helper'

RSpec.describe CategoriesController, type: :routing do 
describe 'routing' do

    #index 
    it 'routes to #index' do
    expect(get: '/categories').to route_to('categories#index')
    end
    
    #new
    it 'routes to #new' do
    expect(get: '/categories/new').to route_to('categories#new')
    end

    # edit
    it do
        should route(:get, '/categories/1/edit').
           to('categories#edit', id: 1)
    end
    
    # show
    it do
        should route(:get, '/categories/1').
        to('categories#show', id: 1)
    end

    #create
    it { expect(post: '/categories').to route_to(controller: 'categories', action: 'create')}
    
    # update
    it { expect(put: '/categories/1').to route_to(controller: 'categories', action: 'update', id: '1') }

    #destroy
    it { expect(delete: '/categories/1').to route_to(controller: 'categories', action: 'destroy', id: '1')}
 

    
end
end