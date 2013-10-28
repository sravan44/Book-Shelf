class Bookself
  include Mongoid::Document
  image_accessor :book_img   
  field :name, :type => String
  field :price, :type => Integer
  field :author, :type => String
  field :book_img_uid, :type=>String
  field :book_img_name, :type=>String
end
