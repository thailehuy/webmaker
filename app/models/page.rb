class Page < ActiveRecord::Base
  attr_accessible :name, :type

  has_many :components
  belongs_to :site

  before_create :add_default_components
  before_create :set_path
  private
  def add_default_components
  end
end
