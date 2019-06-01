class HomeController < ApplicationController
  def index
    @name = params[:name]

    @count = Visit.where(title: "index").first
    if @name.present?
      @count.update!(number: @count.number + 1)
    end
  end
end
