# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                      new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#                          user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#                  destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#                     new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#                    edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#                         user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                                       PUT    /users/password(.:format)                                                                devise/passwords#update
#                                       POST   /users/password(.:format)                                                                devise/passwords#create
#              cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#                 new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#                edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#                     user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                                       PUT    /users(.:format)                                                                         devise/registrations#update
#                                       DELETE /users(.:format)                                                                         devise/registrations#destroy
#                                       POST   /users(.:format)                                                                         devise/registrations#create
#                              profiles GET    /profiles(.:format)                                                                      profiles#index
#                                       POST   /profiles(.:format)                                                                      profiles#create
#                           new_profile GET    /profiles/new(.:format)                                                                  profiles#new
#                          edit_profile GET    /profiles/:id/edit(.:format)                                                             profiles#edit
#                               profile GET    /profiles/:id(.:format)                                                                  profiles#show
#                                       PATCH  /profiles/:id(.:format)                                                                  profiles#update
#                                       PUT    /profiles/:id(.:format)                                                                  profiles#update
#                                       DELETE /profiles/:id(.:format)                                                                  profiles#destroy
#                          publications GET    /publications(.:format)                                                                  publications#index
#                                       POST   /publications(.:format)                                                                  publications#create
#                       new_publication GET    /publications/new(.:format)                                                              publications#new
#                      edit_publication GET    /publications/:id/edit(.:format)                                                         publications#edit
#                           publication PATCH  /publications/:id(.:format)                                                              publications#update
#                                       PUT    /publications/:id(.:format)                                                              publications#update
#                                       DELETE /publications/:id(.:format)                                                              publications#destroy
#                     monetary_accounts GET    /monetary_accounts(.:format)                                                             monetary_accounts#index
#                                       POST   /monetary_accounts(.:format)                                                             monetary_accounts#create
#                  new_monetary_account GET    /monetary_accounts/new(.:format)                                                         monetary_accounts#new
#                 edit_monetary_account GET    /monetary_accounts/:id/edit(.:format)                                                    monetary_accounts#edit
#                      monetary_account PATCH  /monetary_accounts/:id(.:format)                                                         monetary_accounts#update
#                                       PUT    /monetary_accounts/:id(.:format)                                                         monetary_accounts#update
#                                       DELETE /monetary_accounts/:id(.:format)                                                         monetary_accounts#destroy
#                        toggle_profile PUT    /toggle_profile(.:format)                                                                profiles#toggle_profile
#                                  root GET    /                                                                                        home#index
#                         appreciations GET    /profiles/:id/appreciations(.:format)                                                    appreciations#select
#                                coffee GET    /profiles/:id/appreciations/coffee(.:format)                                             appreciations#coffee
#                         coffee_create POST   /profiles/:id/appreciations(.:format)                                                    appreciations#coffee_create
#                                   hug GET    /profiles/:id/appreciations/hug(.:format)                                                appreciations#hug
#                                  hug2 GET    /profiles/:id/appreciations/hug2(.:format)                                               appreciations#hug2
#                                thanks GET    /profiles/:id/appreciations/thanks(.:format)                                             appreciations#thanks
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  resources :publications, except: :show
  resources :monetary_accounts, except: :show
  put '/toggle_profile', to: 'profiles#toggle_profile'
  root to: "home#index"

  get 'profiles/:id/appreciations', to: 'appreciations#select', :as => 'appreciations'

  get 'profiles/:id/appreciations/coffee', to: 'appreciations#coffee', :as => 'coffee'
  post 'profiles/:id/appreciations', to: 'appreciations#coffee_create', :as => 'coffee_create'

  get 'profiles/:id/appreciations/hug', to: 'appreciations#hug_animation', :as => 'hug_animation'
  get 'profiles/:id/hug_appreciation', to: 'appreciations#hug_new', :as => 'hug_new'
  post 'profiles/:id/hug_appreciation', to: 'appreciations#hug_create', :as => 'hug_create'

  get 'profiles/:id/appreciations/thanks', to: 'appreciations#thanks', :as => 'thanks'
end
