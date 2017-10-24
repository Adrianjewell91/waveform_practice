class UploadsController < ApplicationController
  include Transloadit::Rails::ParamsDecoder

  def new
  end

  def create
    #Upon create, I need to create a new entry and then save it.
    debugger
    waveform = Upload.new
    waveform.title = params.values.first["results"]["encode"][0]["original_basename"]
    waveform.url = params.values.first["results"]["encode"][0]["url"]

    waveform.save
    # if waveform.save
    #   render json: {new_entry: waveform}
    # else
    #   render json: {error: "error!"}
    # end
  end

  def index
    uploads = Upload.all
    render json: {entities: uploads}
  end

end
