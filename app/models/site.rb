class Site < ActiveRecord::Base
  attr_accessible :name, :subdomain, :theme_id, :owner, :owner_id

  belongs_to :owner, :class_name => "User", :foreign_key => :owner_id
  has_one :home_page, :class_name => 'HomePage', :foreign_key => :site_id
  has_one :about_page, :class_name => 'AboutPage', :foreign_key => :site_id
  has_one :service_page, :class_name => 'ServicePage', :foreign_key => :site_id

  before_create :add_default_pages

  private
  def add_default_pages
    self.build_home_page
    self.build_about_page
    self.build_service_page
  end
end
