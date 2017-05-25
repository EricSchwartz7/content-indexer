class Api::V1::WebsitesController < ApplicationController

  def index
    websites = Website.all
    render json: websites
  end

  def create
    page = Scraper.parse(params[:url])
    if !page.nil?
      render json: Website.last
    end
  end

  def show
    render json: Website.find(params[:id])
  end

end
