class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :update, :destroy]
  # before_action :authenticate_token, except: [:index]
  # before_action :authorize_storyteller, except: [:index]

  # GET /stories
  def index
    @stories = Story.all

    render json: @stories.to_json(include: :snippets)
  end

  # GET /stories/1
  def show
    render json: @story.to_json(include: [:snippets, :storytellers])
  end

  # POST /stories
  def create
    @story = Story.new(story_params)

    if @story.save
      render json: @story, status: :created, location: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stories/1
  def update
    if @story.update(story_params)
      render json: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stories/1
  def destroy
    @story.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:title, :category, :content, :authors, :description, :date)
    end
end
