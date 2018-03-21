require 'rails_helper'

RSpec.describe Playlist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:user) }

    it { is_expected.to have_many(:playlist_entities) }
    it { is_expected.to have_many(:mp3_entities).through(:playlist_entities) }
  end
end
