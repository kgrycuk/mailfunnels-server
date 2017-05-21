class EmailJobsController < ApplicationController
  before_action :set_email_job, only: [:show, :update, :destroy]

  # GET /email_jobs
  def index
    @email_jobs = EmailJob.all

    render json: @email_jobs
  end

  # GET /email_jobs/1
  def show
    render json: @email_job
  end

  # POST /email_jobs
  def create
    @email_job = EmailJob.new(email_job_params)

    logger.info "---CREATING AN EMAIL JOB---"

    if @email_job.save

      # SendEmail Signature: # app_id, email_list_id, subject, content, execute_time

      thisjob = SendEmailJob.perform_later
      @email_job.queue_identifier = thisjob.provider_job_id
      @email_job.save

      render json: @email_job, status: :created, location: @email_job
    else
      render json: @email_job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /email_jobs/1
  def update
    if @email_job.update(email_job_params)
      render json: @email_job
    else
      render json: @email_job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /email_jobs/1
  def destroy
    @email_job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_job
      @email_job = EmailJob.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def email_job_params
      params.require(:email_job).permit(:subject, :content, :name, :executed, :execute_time, :hook_identifier, :execute_frequency, :queue_identifier, :execute_set_time, :execute_date)
    end
end
