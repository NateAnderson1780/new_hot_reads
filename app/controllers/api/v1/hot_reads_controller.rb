class Api::V1::HotReadsController < ApplicationController
  
  def index
    @hot_reads = Read.hot
    render json: @hot_reads
  end
end