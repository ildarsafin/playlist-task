require "rails_helper"

describe "import_from_csv:import_users" do
  include_context "rake"

  let(:file) { File.open("spec/support/csv/user_test.csv") }

  before do
    allow(File).to receive_message_chain(:read).and_return(file)
  end

  it "generates creates 3 users" do
    subject.invoke
    expect(User.count).to eq 3
  end
end

describe "import_from_csv:import_mp3" do
  include_context "rake"

  let(:file) { File.open("spec/support/csv/mp3_test.csv") }

  before do
    allow(File).to receive_message_chain(:read).and_return(file)
  end

  it "generates a registrations report" do
    subject.invoke
    expect(Mp3Entity.count).to eq 5
  end
end

describe "import_from_csv:import_playlist" do
  include_context "rake"

  let(:file) { File.open("spec/support/csv/playlist_test.csv") }
  let!(:user) { create :user, id: 1 }
  let!(:mp3_entity) { create :mp3_entity, id: 1 }

  before do
    allow(File).to receive_message_chain(:read).and_return(file)
  end

  it "generates a registrations report" do
    subject.invoke
    expect(Playlist.count).to eq 1
    expect(Playlist.first.user).to eq user
    expect(Playlist.first.mp3_entities).to include mp3_entity
  end
end
