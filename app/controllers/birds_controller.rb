class BirdsController < ApplicationController
  before_action :load_bird, only: %i(update destroy)

  def index
    @birds = bird_class.all
  end

  def create
    bird = bird_class.new(bird_params)
    if bird.save
      render json: bird, status: :created
    else
      render json: bird.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @bird.update(bird_params)
      head :no_content
    else
      render json: @bird.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @bird.destroy
    head :no_content
  end

  private

  def load_bird
    @bird = bird_class.find(params[:id])
  end

  def bird_params
    params.require(:bird).permit(:type, :name, :age)
  end

  def type
    params[:type] || 'Bird'
  end

  def bird_class
    type.constantize
  end
end
