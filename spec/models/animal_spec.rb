require 'rails_helper'

RSpec.describe Animal, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :breed }
    it { should validate_presence_of :owner }
    it { should validate_presence_of :gender }
    it { should validate_presence_of :birthday }
    it { should validate_presence_of :owner_phone }
    it { should validate_presence_of :last_checkin }
    it { should validate_inclusion_of(:gender).in_array(['male', 'female']) }
    it { should validate_inclusion_of(:castrated).in_array([true, false]) }
  end
end
