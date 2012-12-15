class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :category_id, :description, :gender, :image, :name, :price

  mount_uploader :image, ImageUploader
end
