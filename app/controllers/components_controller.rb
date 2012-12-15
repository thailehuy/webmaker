class ComponentsController < ApplicationController
  before_filter :find_data
  def update
    if @component.update_attributes(params[:component])
      render :json => @component, :status => 200
    else
      render :json => @component, :status => 500
    end
  end

  private
  def find_data
    @site = Site.find(params[:site_id])
    @page = Page.find(params[:page_id])
    @component = Component.find(params[:id])
  end
end