class Component < ActiveRecord::Base
  attr_accessible :content, :name, :page_id, :html_tag

  belongs_to :page
end
