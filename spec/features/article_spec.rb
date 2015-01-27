require 'spec_helper'

feature 'my feature' do
  background do
	  # セットアップの詳細を追加する
	end

  scenario 'my first test' do
	  # サンプルを書く
		visit '/'
		expect(page).to have_content 'Hello'

		save_and_open_page
	end
end
