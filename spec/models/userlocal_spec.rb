require 'rails_helper'

RSpec.describe Userlocal, type: :model do
  let(:user) {User.new(name: "Billy")}
  let(:place) {Place.new(name: "Denver")}
  let(:user_local) {Userlocal.new}
end
