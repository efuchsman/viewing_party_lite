# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'Relationships' do
    it { should have_many :viewing_party_users }
    it { should have_many(:viewing_parties).through(:viewing_party_users) }
  end

  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }
    it { should validate_confirmation_of :password }
  end
end
