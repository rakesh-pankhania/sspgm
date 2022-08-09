class PagesController < ApplicationController
  include HighVoltage::StaticPage
  layout :layout_for_page

  private

  def layout_for_page
    if params.key?(:layout) && params[:layout] == 'false'
      'empty'
    else
      'application'
    end
  end
end