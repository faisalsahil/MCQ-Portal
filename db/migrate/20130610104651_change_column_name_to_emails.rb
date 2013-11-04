class ChangeColumnNameToEmails < ActiveRecord::Migration
  def change
    remove_column :emails, :sent_id
    remove_column :emails, :recv_id
    add_column :emails, :to_id, :integer
    add_column :emails, :from_id, :integer
  end
end
