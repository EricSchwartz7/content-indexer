class Api::V1::WebsitesController < ApplicationController

  def index
    websites = Website.all
    render json: websites
  end

  def create
    Scraper.parse(params[:url])
    render json: Website.last
  end

  def show
    render json: Website.find(params[:id])
  end

end
