require "rails_helper"

RSpec.describe Cast, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:character) }

    it { should belong_to(:actors) }

    it { should belong_to(:movie) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
