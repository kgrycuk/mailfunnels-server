class NodesController < ApplicationController
  before_action :set_node, only: [:show, :update, :destroy]

  # GET /nodes
  def index
    @nodes = Node.all

    render json: @nodes
  end

  # GET /nodes/1
  def show
    render json: @node
  end

  # POST /nodes
  def create
    @node = Node.new(node_params)

    if @node.save
      render json: @node, status: :created, location: @node
    else
      render json: @node.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nodes/1
  def update
    if @node.update(node_params)
      render json: @node
    else
      render json: @node.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nodes/1
  def destroy
    @node.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def node_params
      params.require(:node).permit(:name, :top, :left, :num_emails, :num_emails_sent, :num_emails_opened, :num_emails_clicked, :num_revenue, :delay_time, :app_id, :funnel_id, :email_template_id)
    end
end
