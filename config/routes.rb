Rails.application.routes.draw do
  resources :cocktails, except: [:update, :edit, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
end

#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#            cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)                                                  doses#create
#         new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format)                                              doses#new
#             cocktail_dose DELETE /cocktails/:cocktail_id/doses/:id(.:format)                                              doses#destroy
#                 cocktails GET    /cocktails(.:format)                                                                     cocktails#index
#                           POST   /cocktails(.:format)                                                                     cocktails#create
#              new_cocktail GET    /cocktails/new(.:format)                                                                 cocktails#new
#                  cocktail GET    /cocktails/:id(.:format)                                                                 cocktails#show
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
