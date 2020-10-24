class SalesController < ApplicationController
  def report
    # generate_report
    ReportWorker.perform_async('10-24-2020', '10-25-2020', params[:num])
    render json: { message: 'Request to generate report added to queue' }
  end

  private

  def generate_report
    sleep 30
  end
end
