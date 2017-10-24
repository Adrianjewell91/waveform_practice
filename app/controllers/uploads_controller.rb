class UploadsController < ApplicationController
  include Transloadit::Rails::ParamsDecoder

  def new
  end

  def create
  end

  def index
    uploads = Upload.all
    render json: {entities: uploads}
  end

end
