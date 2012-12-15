class Category < ActiveRecord::Base
  attr_accessible :name, :position, :site_id
  belongs_to :site
  belongs_to :parent_category, :class_name => "Category", :foreign_key => :parent_id
  has_many :children_categories, :class_name => "Category", :foreign_key => :parent_id

  acts_as_list :scope => :site
end
