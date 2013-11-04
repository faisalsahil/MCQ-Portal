class CreateAmazons < ActiveRecord::Migration
  def change
    create_table :amazons do |t|
      t.string :file

      t.timestamps
    end
  end
end
