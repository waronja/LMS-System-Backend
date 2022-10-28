class ResourcesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  before_action :authorize
  skip_before_action :authorize ,only:[:index,:show]

  # GET /resources or /resources.json
  def index
    @resources = Resource.all
    render json: @resources
  end

  # GET /resources/1 or /resources/1.json
  def show
    @resources = set_resource
    if @resources
      render json: @resources, status: :ok
    else
      render json: { error: "Resources not found" }
    end
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources or /resources.json
  def create
    @resource = Resource.create!(resource_params)
    render json: @resource, status: :created
  end

  # PATCH/PUT /resources/1 or /resources/1.json
  def update
    @resource = set_resource
    @resource.update!(resource_params)
    render json: @resource
  end

  # DELETE /resources/1 or /resources/1.json
  def destroy
    @resource = set_resource
    @resource.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
 def authorize
  return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :educator_id
 end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  # Only allow a list of trusted parameters through.
  def resource_params
    params.permit(:name, :lesson_id, :quiz_id)
  end
end
