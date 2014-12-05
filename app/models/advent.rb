class Advent < ActiveRecord::Base
  validates_uniqueness_of :date
  mount_uploader :image, FileUploader
end
