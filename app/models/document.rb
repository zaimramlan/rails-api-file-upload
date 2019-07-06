class Document < ApplicationRecord
  belongs_to :item
  before_validation :parse_file
  attr_accessor :file_contents
  has_attached_file :file
  validates_attachment :file, presence: true, content_type: { content_type: "application/pdf" }


  private

  def parse_file
    p file_contents
    file = Paperclip.io_adapters.for(file_contents)
    file.original_filename = "pdfile.pdf"
    self.file = file
  end
end
