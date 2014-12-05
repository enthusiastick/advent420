class Advent < ActiveRecord::Base
  validates_uniqueness_of :date
  validates_presence_of :image
  mount_uploader :image, FileUploader
end
