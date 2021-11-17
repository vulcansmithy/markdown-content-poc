class MarkdownContent < ApplicationRecord
  
  belongs_to :content, optional: true
  
end
