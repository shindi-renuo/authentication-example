# Rails Auth Example

Ever since the introduction of Rails 8, there is a much smaller need for separate authentication gems,
like `Devise` for example.

## About

This is a simple blog app written in RoR 8 and includes the Rails Authentication mentioned earlier.

## Get Started

1. First, clone the repository:

```bash
git clone git@github.com:shindi-renuo/authentication-example.git 
cd authentication-example
```

2. Install dependencies

```bash
bin/setup
```

3. Run the app

```bash
bin/dev
```

## Additional Information

For more information about Rails 8 Native Authentication, check out [this](https://www.bigbinary.com/blog/rails-8-introduces-a-basic-authentication-generator) blog article.

## Steps

First, I ran `bin/rails g authentication`.

This generates the following output:

```bash
❯ br g authentication                                                                                                                ↑1  1:27PM  !6674
      invoke  erb
      create    app/views/passwords/new.html.erb
      create    app/views/passwords/edit.html.erb
      create    app/views/sessions/new.html.erb
      create  app/models/session.rb
      create  app/models/user.rb
      create  app/models/current.rb
      create  app/controllers/sessions_controller.rb
      create  app/controllers/concerns/authentication.rb
      create  app/controllers/passwords_controller.rb
      create  app/channels/application_cable/connection.rb
      create  app/mailers/passwords_mailer.rb
      create  app/views/passwords_mailer/reset.html.erb
      create  app/views/passwords_mailer/reset.text.erb
      create  test/mailers/previews/passwords_mailer_preview.rb
      insert  app/controllers/application_controller.rb
       route  resources :passwords, param: :token
       route  resource :session
        gsub  Gemfile
      bundle  install --quiet
    generate  migration CreateUsers email_address:string!:uniq password_digest:string! --force
       rails  generate migration CreateUsers email_address:string!:uniq password_digest:string! --force
      invoke  active_record
      create    db/migrate/20250404112727_create_users.rb
    generate  migration CreateSessions user:references ip_address:string user_agent:string --force
       rails  generate migration CreateSessions user:references ip_address:string user_agent:string --force
      invoke  active_record
      create    db/migrate/20250404112728_create_sessions.rb
      invoke  test_unit
      create    test/fixtures/users.yml
      create    test/models/user_test.rb
```

Then, I ran `bin/rails generate scaffold Post title:string body:text`.
This creates a new scaffold for our blogging app.