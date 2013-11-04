class Book < ActiveRecord::Base
  attr_accessible :grade, :name

  has_many :chapters
  has_many :notes, :through => :chapters
end
