class Image
  include Mongoid::Document

# Associations
  belongs_to :imageable, :polymorphic => true

## Image Uploads
  image_accessor :attachment

## Fields
  with_options :type => String do |image|
    image.field :attachment_name
    image.field :attachment_uid
  end

## Validations
  validates_size_of  :attachment, :maximum => 5.megabytes
  validates_property :format, :of => :attachment, :in => [:jpg, :jpeg, :png, :gif]

end

end
