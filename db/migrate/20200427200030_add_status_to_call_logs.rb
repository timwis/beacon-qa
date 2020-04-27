class AddStatusToCallLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :call_logs, :status, :string, default: 'awaiting_review', null: false
  end
end
