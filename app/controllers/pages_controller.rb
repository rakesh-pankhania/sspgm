class PagesController < ApplicationController
  include HighVoltage::StaticPage
  layout :layout_for_page

  private

  def layout_for_page
    @page = params[:id]
    if @page.include?('/') && !@page.include?('index')
      'empty'
    else
      'application'
    end
  end
end