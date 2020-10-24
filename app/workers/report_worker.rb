class ReportWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(start_date, end_date, num)
    puts "NUM: #{num} SIDEKIQ WORKER GENERATING REPORT FROM #{start_date} TO #{end_date}"
    sleep 10
    puts "NUM: #{num} SIDEKIQ FINISHED"
  end
end
