class Topic < ActiveRecord::Base
  attr_accessible :chapter_id, :name, :questions_attributes
  attr_accessor :questions_attributes

  belongs_to :chapter
  has_many :questions
  accepts_nested_attributes_for :questions
end
