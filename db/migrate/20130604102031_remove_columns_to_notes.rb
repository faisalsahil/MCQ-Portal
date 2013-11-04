class RemoveColumnsToNotes < ActiveRecord::Migration
 def change
   remove_column :notes,:book_name
   remove_column :notes,:grade
   remove_column :notes,:chapter_name

 end
end
