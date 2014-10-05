class Group < ActiveRecord::Base
  belongs_to :board
  has_many :images
end
