class ApplicationController < ActionController::Base
  include JSONErrors
  around_action :collect_metrics

  def collect_metrics
    start = Time.now
    yield
    duration = Time.now - start

    Rails.logger.info "collect_metrics -  controller_name: #{controller_name} Acao: #{action_name}: Tempo: #{duration}"

    Metric.create(
      {
        controller_name: controller_name,
        action_name: action_name,
        time_process: duration,
        view_runtime: @_view_runtime.blank? ? 0.00 : @_view_runtime,
        db_runtime: @_db_runtime.blank? ? 0.00 : @_db_runtime
      }
    )
  end
end
