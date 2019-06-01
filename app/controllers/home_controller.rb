class HomeController < ApplicationController
  def index

    @name = params[:name]&.parameterize&.split('-')&.join(' ')&.humanize

    if @name.present?
      @visits = Visit.where(title: @name)
      if @visits.any?
        @visits.first.update(number: @visits.first.number + 1)
      else
        @visits = [create_name]
      end
      @visit = @visits.first
    end
    add_total_count
  end


  private

  def add_total_count
    @count = Visit.where(title: "index").first
    @count.update!(number: @count.number + 1)
  end

  def create_name
    Visit.create!(title: @name, number: 1)
  end
end
