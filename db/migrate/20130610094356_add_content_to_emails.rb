class AddContentToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :content, :string
  end
end
