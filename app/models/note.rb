class Note < ApplicationRecord
  enum category: { 'Successful call': 'phone_success',
                   'Failed call': 'phone_failure',
                   'Left message': 'phone_message',
                   'General note': 'general',
                   'Imported call log': 'phone_import' }

  scope :manual, -> { where.not(category: 'phone_import') }
end
