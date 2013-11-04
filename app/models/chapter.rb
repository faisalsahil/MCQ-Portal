class Chapter < ActiveRecord::Base
  attr_accessible :name, :book_id, :questions_attributes
  attr_accessor :questions_attributes

  belongs_to :book
  has_many :questions
  has_one :note
  accepts_nested_attributes_for :questions

end