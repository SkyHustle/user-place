require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.new(name: 'Sam')}

  it "is valid" do
    expect(user).to be_valid
  end

  it "is not valid without a name" do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'has an array of places' do
    expect(user.places).to eq([])
  end
end