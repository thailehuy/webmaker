class ServicePage < Page
  private
  def add_default_components
    self.components.build({
      :name => "top_block",
      :html_tag => "div",
      :content => "This is top block of the page"
    })
    self.components.build({
      :name => "middle_block",
      :html_tag => "div",
      :content => "This is middle block of the page"
    })
    self.components.build({
      :name => "bottom_block",
      :html_tag => "div",
      :content => "This is bottom block of the page"
    })
  end

  def set_path
    self.path = '/service'
  end
end