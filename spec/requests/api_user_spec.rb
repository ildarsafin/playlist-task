require "rails_helper"

RSpec.describe "User", :type => :request do
  let!(:users) { FactoryBot.create_list :user, 3 }

  it "Retrieves jsoned message" do
    get "/api/v1/users/"

    expect(response.header['Content-Type']).to include('application/json')
    expect(response.body).to eq(users.to_json(include: 'playlists'))
  end
end
