class Advent < ActiveRecord::Base
  validates_uniqueness_of :date
end