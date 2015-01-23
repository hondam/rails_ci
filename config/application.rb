require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsCi
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

		config.generators do |g|
			g.test_framework :rspec,
			  # true はモデルごとにフィクスチャを作成することを指定します(本当のフィクスチャの 代わりに Factory Girl のファクトリを使います) 。
		    fixtures: true,
				# false はビュースペックを作成しないことを指定します。
			  view_specs: false,
				# false はヘルパーファイル用のスペックを作成しないことを指定します。
			  helper_specs: false,
				# false は config/routes.rb 用のスペックファイルの作成を省略します。
			  routing_specs: false,
			  controller_specs: true,
				# false を指定するとRSpecがデフォルトで追加する統合テストレベルのスペックをspec/requestsに追加しなくなります。
			  request_specs: false
			# フィクスチャの代わりにファクトリを作成し、spec/factories ディレクトリにファクトリを保存することを指定しています。
			g.fixture_replacement :factory_girl, dir: "spec/factories"
	  end
  end
end
