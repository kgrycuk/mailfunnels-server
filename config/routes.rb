MailFunnelServer::Application.routes.draw do
  resources :captured_hooks
  resources :email_templates
  resources :email_lists
  resources :subscribers
  # http://localhost:3001/API/
	mount API => '/'

  # resources :links
  # resources :nodes
  # resources :triggers
  # resources :funnels
  # resources :campaign_product_leads



	# http://localhost:3001/RESOURCE

	# resources :email_lists do
	# 	resources :emails
	# end

	# resources :emails
	# resources :hooks

	# resources :apps do
	# 	resources :email_lists do
	# 		resources :email
	# 	end
	# end


end
