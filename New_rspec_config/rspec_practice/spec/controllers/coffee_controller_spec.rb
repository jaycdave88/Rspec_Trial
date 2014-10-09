require 'rails_helper'

describe CoffeeController do
  it "returns a status of 200/success" do
    get :index
    expect(response).to have_http_status(200)
    expect(response).to be_success
  end
  it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  end
  it "returns a status of 200/success" do
    get :signup
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
end
