module Api
  module V1
    class MetricsController < ApplicationController
      before_action :set_metric, only: [:show]
      skip_before_action :verify_authenticity_token

      def index
        @metrics = Metric.ordered.all
        render json: @metrics
      end

      def show
        render json: @metric
      end

      private

      def set_metric
        @metric = Metric.find(params[:id])
      end
    end
  end
end