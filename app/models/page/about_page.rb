class AboutPage < Page
  private
  def add_default_components
    self.components.build({
      :name => "top_block",
      :html_tag => "div",
      :content => "This is top block of the page"
    })
    self.components.build({
      :name => "bottom_left_block",
      :html_tag => "div",
      :content => "This is bottom left block of the page"
    })
    self.components.build({
      :name => "bottom_right_block",
      :html_tag => "div",
      :content => "This is bottom right block of the page"
    })
  end

  def set_path
    self.path = '/about'
  end
end