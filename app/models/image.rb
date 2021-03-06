class Image < ActiveRecord::Base
  belongs_to :group

  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  path: "/images/:style/:filename",
  url: "/images/:style/:filename",
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end
