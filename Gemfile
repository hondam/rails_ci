source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use Postgres as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'thin'
end

group :development, :test do
	# 
	# Edit RAILS_ROOT/.env
  gem 'dotenv-rails'

	# 
	gem 'foreman'

	# RSpecを含んでいるgemです。このgemはRails専用の機能を追加するRSpecのラッパーライブラリになっています
	gem 'rspec-rails'

	# Railsがデフォルトで提供するフィクスチャをずっと便利なファクトリで置き換えます。
	# フィクスチャやファクトリはテストスイート用のテストデータを作成するために使われます。
	gem 'factory_girl_rails'
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
