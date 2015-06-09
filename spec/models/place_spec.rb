require 'rails_helper'

RSpec.describe Place, type: :model do
let(:place) {Place.new(name: 'Denver')}

  it "is valid" do
    expect(place).to be_valid
  end

  it "is not valid without a name" do
    place.name = nil
    expect(place).to_not be_valid
  end

  it 'has an array of users' do
    expect(place.users).to eq([])
  end
end
