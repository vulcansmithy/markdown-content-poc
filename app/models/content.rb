class Content < ApplicationRecord
  
  has_one :markdown_content
  
  validates_uniqueness_of :title, message: "must be unique"
  
  has_superslug :title, :slug, separator: "-", force_update: true
  

end