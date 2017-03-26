class Animal < ActiveRecord::Base
  include PgSearch

  validates :name, :breed, :owner, :gender, :birthday, :owner_phone,
            :last_checkin, presence: true
  validates :gender, inclusion: ['male', 'female']
  validates :castrated, inclusion: [true, false]

  # PgSearch scopes (:tsearch = builtin Full-text Search)
  pg_search_scope :by_name_or_owner, against: [:name, :owner],
                                     ignoring: :accents,
                                     using: {
                                       trigram: {
                                         threshold: 0.1
                                       },
                                       tsearch: {
                                         prefix: true,
                                         any_word: true
                                       }
                                     }
end
