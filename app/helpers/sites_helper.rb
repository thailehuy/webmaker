module SitesHelper
  def render_component(comp_name, page)
    component = page.components.find_by_name(comp_name)
    return "" unless component
    return render_html_component(component)
  end

  def render_html_component(component)
    html = capture_haml do
      haml_tag(component.html_tag, component.content, :class => "rest-in-place #{component.name}", :"data-url" => site_page_component_path(component.page.site, component.page, component), :"data-object" => "component", :"data-attribute" => "content", :"data-formtype" => "textarea"
        )
    end
    raw html
  end
end
