SimpleForm.setup do |config|
  config.wrappers :default, class: :input,
    hint_class: :field_with_hint, error_class: :field_with_errors, valid_class: :field_without_errors do |b|

    b.use :html5

    b.use :placeholder

    b.optional :maxlength

    b.optional :minlength

    b.optional :pattern

    b.optional :min_max

    b.optional :readonly

    b.use :label_input
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }
  end

  config.default_wrapper = :default

  config.boolean_style = :nested

  config.button_class = 'btn'

  config.error_notification_tag = :div

  config.error_notification_class = 'error_notification'

  config.browser_validations = false

  # You can define a class to use in all item wrappers. Defaulting to none.
  config.item_wrapper_class = 'ui checkbox invoice_radio_button'

  config.boolean_label_class = 'checkbox'  
end
