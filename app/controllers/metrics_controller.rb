class MetricsController < ApplicationController
  before_action :set_metric, only: [:show]

  def index
    @metrics = Metric.all
  end

  def show
  end

  def create
    @metric = Metric.new(metric_params)
  end

  private

  def set_metric
    @metric = Metric.find(params[:id])
  end

  def metric_params
    params.require(:metric).permit(:controller_name, :action_name, :time_process, :view_runtime, :db_runtime)
  end
end
