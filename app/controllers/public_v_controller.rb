class PublicVController < ApplicationController
  def index
    @videos = Video.all
    @p = Video.search(params[:q])
    @search = @p.result(distinct: true)
  end
end
