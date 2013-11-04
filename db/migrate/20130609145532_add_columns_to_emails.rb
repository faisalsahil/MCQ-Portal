class AddColumnsToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :from, :string
    add_column :emails, :to, :string
    add_column :emails, :subject, :string
    add_column :emails, :date, :string
  end
end
