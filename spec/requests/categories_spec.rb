require 'rails_helper'

RSpec.describe 'Console::Categories', type: :request do
  before { host! "#{ENV.fetch('SUBDOMAIN_CONSOLE', nil)}.lvh.me:3000" }

  let(:valid_attributes) {
    { name: 'My favorite' }
  }

  let(:invalid_attributes) {
    { name: nil }
  }

  describe 'GET /categories' do
    it 'renders a successful response' do
      get console_categories_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      category = Category.create! valid_attributes
      get console_category_url(category)
      expect(response).to be_successful
    end
  end

  describe 'GET /categories/new' do
    it 'renders a successful response' do
      get new_console_category_url
      expect(response).to be_successful
    end
  end

  describe 'GET /category/1/edit' do
    it 'renders a successful response' do
      category = Category.create! valid_attributes
      get edit_console_category_url(category)
      expect(response).to be_successful
    end
  end

  describe 'Category /create' do
    context 'with valid parameters' do
      it "create a Category and redirects to the Category's edit page" do
        get '/categories/new'
        expect(response).to render_template(:new)
        post '/categories', params: { category: { name: 'My Category' } }
        expect(response).to redirect_to(console_categories_path)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new category and render Category new page' do
        get '/categories/new'
        expect(response).to render_template(:new)
        post '/categories', params: { category: { name: nil } }
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'PATCH /update' do
    let(:new_attributes) {
      { name: 'Superman' }
    }
    context 'with valid parameters' do
      it 'renders a successfully edit response and update successfully' do
        category = Category.create! valid_attributes
        get edit_console_category_url(category)
        expect(response).to be_successful
        patch console_category_url(category), params: { category: new_attributes }
        expect(response).to redirect_to(edit_console_category_url(category))
      end
    end

    context 'with invalid  parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        category = Category.create! valid_attributes
        patch console_category_url(category), params: { category: invalid_attributes }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested category' do
      category = Category.create! valid_attributes
      expect {
        delete console_category_url(category)
      }.to change(Category, :count).by(-1)
    end

    it 'redirects to the categories list' do
      category = Category.create! valid_attributes
      delete console_category_url(category)
      expect(response).to redirect_to(console_categories_url)
    end
  end
end
