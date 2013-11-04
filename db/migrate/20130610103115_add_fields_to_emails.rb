class AddFieldsToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :sent_id, :integer
    add_column :emails, :recv_id, :integer
  end
end
