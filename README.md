Blocipedia 

                    Personal wiki 
===|=

> [xhttps://devcenter.heroku.com/articles/sendgrid#ruby-rails]

> Version Rails 4.1.7
> http://nvie.com/posts/a-successful-git-branching-model/
>>naming branches 

```
-MacBook-Pro:blocipedia Tish$ rake routes

                  Prefix Verb   URI Pattern                       Controller#Action

                   wikis GET    /wikis(.:format)                  wikis#index
                         POST   /wikis(.:format)                  wikis#create

                new_wiki GET    /wikis/new(.:format)              wikis#new
               edit_wiki GET    /wikis/:id/edit(.:format)         wikis#edit

                    wiki GET    /wikis/:id(.:format)              wikis#show
                         PATCH  /wikis/:id(.:format)              wikis#update
                         PUT    /wikis/:id(.:format)              wikis#update
                         DELETE /wikis/:id(.:format)              wikis#destroy

        new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
            user_session POST   /users/sign_in(.:format)          devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy

           user_password POST   /users/password(.:format)         devise/passwords#create
       new_user_password GET    /users/password/new(.:format)     devise/passwords#new

      edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
                         PATCH  /users/password(.:format)         devise/passwords#update
                         PUT    /users/password(.:format)         devise/passwords#update

cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
       user_registration POST   /users(.:format)                  devise/registrations#create
   new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit

                         PATCH  /users(.:format)                  devise/registrations#update
                         PUT    /users(.:format)                  devise/registrations#update
                         DELETE /users(.:format)                  devise/registrations#destroy

       user_confirmation POST   /users/confirmation(.:format)     devise/confirmations#create

   new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
                         GET    /users/confirmation(.:format)     devise/confirmations#show

                    user PATCH  /users/:id(.:format)              users#update
                         PUT    /users/:id(.:format)              users#update
                    root GET    /                                 welcome#index



                    ```




<%= simple_form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
  <div class="field">
    <%= f.label :email %><br />
    <%= f.email_field :email, autofocus: true %>
  </div>

  <div class="field">
    <%= f.label :password %><br />
    <%= f.password_field :password, show the password <<<<<<<< 
    <%= f.password_field :password, autocomplete: "off" %>
  </div>

  <% if devise_mapping.rememberable? -%>
    <div class="field">
      <%= f.check_box :remember_me %>
      <%= f.label :remember_me %>
    </div>
  <% end -%>

  <div class="actions">
    <%= f.submit "Log in" %>
  </div>
<% end %>

<%= render "devise/shared/links" %>

  ```

  
