class Item < ApplicationRecord
  has_many :documents
  attr_accessor :image_base
  attr_accessor :document_data
  before_validation :parse_image

  has_attached_file :picture, url: "/system/:class/:attachment/:id/:style/:filename", styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture



  def save_attachments(params)
    params[:document_data].each do |doc|
      self.documents.create(:file_contents => doc)
    end
  end

  private
  def parse_image
    p image_base
    image = Paperclip.io_adapters.for(image_base)
    image.original_filename = "image.jpg"
    self.picture = image
  end
end
