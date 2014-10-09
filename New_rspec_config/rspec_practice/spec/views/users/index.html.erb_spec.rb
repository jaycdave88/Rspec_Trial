 require 'rails_helper'



RSpec.describe "users/index" do

  it "shows the user's name" do
    assign(:name, "Jay Bahb")
    render
    expect(rendered).to have_selector("[data-ui='username']", text: "Jay Bahb")
  end
end
