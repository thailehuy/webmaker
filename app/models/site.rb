class Site < ActiveRecord::Base
  attr_accessible :name, :subdomain, :theme_id, :owner, :owner_id, :has_homepage, :has_aboutpage, :has_servicepage
  attr_accessor :has_homepage, :has_aboutpage, :has_servicepage

  belongs_to :owner, :class_name => "User", :foreign_key => :owner_id
  has_one :home_page, :class_name => 'HomePage', :foreign_key => :site_id
  has_one :about_page, :class_name => 'AboutPage', :foreign_key => :site_id
  has_one :service_page, :class_name => 'ServicePage', :foreign_key => :site_id
  has_many :pages
  before_create :add_default_pages

  private
  def add_default_pages
    self.build_home_page if has_homepage
    self.build_about_page if has_aboutpage
    self.build_service_page if has_servicepage
  end
end
