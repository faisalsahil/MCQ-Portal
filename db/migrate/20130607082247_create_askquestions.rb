class CreateAskquestions < ActiveRecord::Migration
  def change
    create_table :askquestions do |t|
      t.string :question
      t.string :type

      t.timestamps
    end
  end
end
