source 'https://rubygems.org'

# Default gems
gem 'rails', '4.1.6'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development

# Add gems
gem 'coveralls', require: false

group :production do
  gem 'thin'
end

group :development, :test do
	# Edit RAILS_ROOT/.env
  gem 'dotenv-rails'

	# Procfileベースのプロセス管理
	gem 'foreman'

	# RSpecを含んでいるgemです。このgemはRails専用の機能を追加するRSpecのラッパーライブラリになっています
	gem 'rspec-rails'

	# Railsがデフォルトで提供するフィクスチャをずっと便利なファクトリで置き換えます。
	# フィクスチャやファクトリはテストスイート用のテストデータを作成するために使われます。
	gem 'factory_girl_rails'

	# Ruby用のコードカバレッジ
	gem 'simplecov', :require => false

	# Rails用セキュリティスキャナー
	gem "brakeman", :require => false
  gem 'codesake-dawn', :require=>false

	# 静的コード解析
	gem 'rubocop', require: false

	# N+1問題の警告
	gem "bullet"

	# パフォーマンス計測(peekは外した)
	gem 'rack-mini-profiler', require: false
	gem 'speed_gun'

	# New Relic
	gem 'newrelic_rpm'
end

group :test do
	# 名前やメールアドレス、その他のプレースホルダをファクトリに提供します。
  gem 'faker'

	# ユーザとWebアプリケーションの対話をプログラム上で簡単にシミュレートできるようにします。 
	gem 'capybara'

	# まっさらな状態で各specが実行できるように、テストデータベースのデータを掃除します。 
	gem 'database_cleaner'

	# あなたの好きなタイミングでデフォルトのwebブラウザを開き、アプリケーションの表示内容を見せることです。
	# テストをデバッグするときには大変便利です。
	gem 'launchy'

	# Capybaraを使ってJavaScriptベースの対話処理をテスト可能にします。
	gem 'selenium-webdriver'
end
