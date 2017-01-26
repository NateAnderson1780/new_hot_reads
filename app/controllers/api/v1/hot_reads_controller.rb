class Api::V1::HotReadsController < ApplicationController
  
  def index
    @hot_reads = Read.hot
    render json: @hot_reads
  end
  
  def create
    @hot_read = Read.find_or_initialize_by(hot_read_params)
    if @hot_read.save
      @hot_read.increment!(:count)
      render json: @hot_read, status: 201
    else
      render json: @hot_read.errors.full_messages, status: 500
    end
  end
  
  private
  
  def hot_read_params
    params.permit(:url)
  end
end