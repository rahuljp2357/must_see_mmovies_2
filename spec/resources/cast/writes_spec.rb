require 'rails_helper'

RSpec.describe CastResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'casts',
          attributes: { }
        }
      }
    end

    let(:instance) do
      CastResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Cast.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:cast) { create(:cast) }

    let(:payload) do
      {
        data: {
          id: cast.id.to_s,
          type: 'casts',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      CastResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { cast.reload.updated_at }
      # .and change { cast.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:cast) { create(:cast) }

    let(:instance) do
      CastResource.find(id: cast.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Cast.count }.by(-1)
    end
  end
end
