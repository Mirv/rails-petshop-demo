class Animal < ActiveRecord::Base
  validates :name, :breed, :owner, :gender, :birthday, :owner_phone,
            :last_checkin, presence: true
  validates :gender, inclusion: ['male', 'female']
  validates :castrated, inclusion: [true, false]
end
