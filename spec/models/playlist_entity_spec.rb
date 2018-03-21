require 'rails_helper'

RSpec.describe PlaylistEntity, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:playlist) }
    it { is_expected.to belong_to(:mp3_entity) }
  end
end
