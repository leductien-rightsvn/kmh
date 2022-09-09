require 'rails_helper'

describe 'Public access to categories', type: :request do

  it "does not render a different template" do
    get "/categories/new"
    expect(response).to_not render_template(:show)
  end

  it "creates a Category and redirects to the Category's edit page" do
    get "/categories/new"
    expect(response).to render_template(:new)
    post "/categories", :params => { :category => {:name => "My Category"} }
    expect(response).to redirect_to(edit_category_path(assigns(:category)))
  end

  it "update a Category and redirects to the Category's page" do
    
  end
   
end