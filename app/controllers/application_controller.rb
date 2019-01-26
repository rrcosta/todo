class ApplicationController < ActionController::Base
  include JSONErrors
  around_action :collect_metrics

  def collect_metrics
    start = Time.now
    yield
    duration = Time.now - start
    Rails.logger.info "#{controller_name}##{action_name}: #{duration}s"
  end
end
