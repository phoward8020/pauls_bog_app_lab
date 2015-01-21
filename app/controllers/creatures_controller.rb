class CreaturesController < ApplicationController

  # These guys are "actions"
  # They are called in routes.rb and refer to the views
  # that correspond to this controller (i.e., app/views/creatures/index.html.erb)
  #
  # The default actions are index, new, create, show
  def index
    # render plain: "index"
    @creatures = Creature.all
  end

  def new
    # render plain: "new"
    @creature = Creature.new
  end

  def create
    # render plain: "create"
    # render json: params
    # @creature = Creature.new(creature_params)

    ## Using .new + .save:
    # @creature = Creature.new
    # @creature.name_common = params[:creature][:name_common]
    # @creature.save
    # redirect_to @creature

    ## Using .create + params method:
    Creature.create(creature_params)
    redirect_to creatures_path
  end

  def show
    # render plain: "show"
    @creature = Creature.find(params[:id])
  end

  private
    def creature_params
      params.require(:creature).permit(:name_common, :name_latin, :image_url, :population_status)
    end

end