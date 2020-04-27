class CallLog < ApplicationRecord
  self.primary_key = :contact_id

  has_many :needs, foreign_key: :contact_id
  # TODO: notes for needs that aren't in the table

  enum status: {'Awaiting review': 'awaiting_review',
                'Needs fixing': 'needs_fixing',
                'Reviewed': 'reviewed' }

  def original_triage_call_notes_split
    original_triage_call_notes.split(', ')
  end

  def original_triage_call_notes_count
    original_triage_call_notes_split.size
  end

  def original_triage_call_notes_type
    original_triage_call_notes_split.first
  end
end
