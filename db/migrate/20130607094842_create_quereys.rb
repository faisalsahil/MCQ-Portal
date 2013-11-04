class CreateQuereys < ActiveRecord::Migration
  def change
    create_table :quereys do |t|
      t.string :subject

      t.timestamps
    end
  end
end
