require File.expand_path('../boot', __FILE__)

require 'rails'

require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

# Подгружаем гемы из Gemfile в соответствии с настройками
Bundler.require(*Rails.groups)

module Bbq
  # Настройки нашего приложения
  class Application < Rails::Application
    # Настраиваем наше приложение на работу с русской локалью
    config.i18n.default_locale = :ru
    config.i18n.locale = :ru
    config.i18n.fallbacks = [:en]

    # Настраиваем временную зону
    config.time_zone = 'Moscow'

    # Показывать ошибки для всех колбэков
    config.active_record.raise_in_transactional_callbacks = true
  end
end
