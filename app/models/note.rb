class Note < ActiveRecord::Base
  attr_accessible :book_name, :chapter_name, :file, :grade, :chapter_id
  belongs_to :chapter
  has_one :book, through: :chapter
  mount_uploader :file, FileUploader
end
