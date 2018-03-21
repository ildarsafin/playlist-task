require 'rails_helper'

RSpec.describe Mp3Entity, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:interpret) }
  end

  describe "associations" do
    it { is_expected.to have_many(:playlist_entities) }
    it { is_expected.to have_many(:playlists).through(:playlist_entities) }
  end
end
