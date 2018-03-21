require "rails_helper"

RSpec.describe "User", :type => :request do
  let!(:users) { FactoryBot.create_list :user, 3 }

  it "Opens users page" do
    get "/users/"

    expect(response).to render_template(:index)
    expect(response.body).to include(users.last.user_name)
  end
end
