MailFunnelServer::Application.routes.draw do

  resources :links
  resources :nodes
  resources :triggers
  resources :funnels
  resources :campaign_product_leads

	# http://localhost:3001/API/
	mount API => '/'

	# http://localhost:3001/RESOURCE

	resources :nodes
	resources :triggers
	resources :funnels

	resources :email_lists do
		resources :emails
	end

	resources :emails
	resources :hooks

	resources :apps do
		resources :email_lists do
			resources :email
		end
	end


end
