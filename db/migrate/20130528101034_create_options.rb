class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :mcq
      t.integer :question_id

      t.timestamps
    end
  end
end
