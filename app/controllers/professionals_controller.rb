class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :edit, :update, :destroy]

  def index
    @professionals = Professional.all
  end

  def show
  end

  private

    def set_professional
      @professional = Professional.find(params[:id])
    end
end
