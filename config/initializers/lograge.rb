# frozen_string_literal: true
# https://github.com/roidrage/lograge

Rails.application.configure do
  config.lograge.enabled = true
  config.lograge.formatter = Lograge::Formatters::KeyValue.new

  config.lograge.custom_payload do |controller|
    {
      remote_ip:   controller.request.remote_ip,
      session_id:  controller.session['session_id'],
    }
  end

  config.lograge.custom_options = lambda do |event|
    # capture some specific timing values you are interested in
    # {name: "value", timing: some_float.round(2), host: event.payload[:host], time: event.time}
    rejections = %w[controller action format utf8 authenticity_token]
    {
      params:       event.payload[:params].except(*rejections),
      remote_ip:    event.payload[:remote_ip],
      session_id:   (event.payload[:session_id] || 'none')
    }
  end
end