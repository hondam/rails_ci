Rails.application.routes.draw do
  # GET    /                  welcomeコントローラ indexメソッド
  root 'welcome#index'

	# GET    /articles          articlesコントローラ indexメソッド
	# POST   /articles          articlesコントローラ createメソッド
	# GET    /articles/new      articlesコントローラ newメソッド
	# GET    /articles/:id/edit articlesコントローラ editメソッド
	# GET    /articles/:id      articlesコントローラ showメソッド
	# PATCH  /articles/:id      articlesコントローラ updateメソッド
	# PUT    /articles/:id      articlesコントローラ updateメソッド
	# DELETE /articles/:id      articlesコントローラ destroyメソッド
	resources :articles
end
