# README Stimulus Reflex Demo Application

Things you may want to cover:

* Ruby version 3.1.2

* Rails 7

* Tailswind css

* Steps for setup Database Initialization

  1. Set variable in .env,  gem used 'dotenv-rails' Example file rename .env.example to .env
     put .env file in .gitignore

  2. Database initialization
     rails db:create
     rails db:migrate
     rails db:seed

Demo application showing us a working of StimulusReflex with rails 7. Followed Steps to create a demo

1. created a rails new app
    ```
    rails new ReflexStimulusDemoApp --database=postgresql

2. Created gemset using rbenv following are the commands
    ```
    rbenv gemset init
    rbenv gemset list #see list of gemsets
    rbenv gemset create 3.1.2 ReflexStimulusDemoApp
    echo '.gems' > .rbenv-gemsets
    echo -e "ReflexStimulusDemoApp" > .rbenv-gemsets  #use created gemset
    rbenv gemset active

3. bundle install

4. Run database initialization and migration. see above

5. Setup StimulusReflex
    ```
    bundle add stimulus_reflex -v 3.5.0.pre8

6. Enable Caching:- StimulusReflex advises to use the cache store for session persistence, so we’ll configure that in development.rb:
    ```
    # config/environments/development.rb
        Rails.application.configure do
        # ...
        config.session_store :cache_store
        # ...
        end
    
    Run in command line
    
    bin/rails dev:cache

7. Generate file in initialzer and add StimulusReflex Sanity Checker

    ```
    rails generate stimulus_reflex:initializer

    # config/initializers/stimulus_reflex.rb

    StimulusReflex.configure do |config|
      config.on_failed_sanity_checks = :warn
    end


8. Pinned required packages:
    ```
    bin/importmap pin stimulus_reflex@3.5.0-pre8

9. Initialize the StimulusReflex Client in
    ```
    // app/javascript/controllers/index.js

    on first line add:-   
    
    import StimulusReflex from "stimulus_reflex";

    import { cable } from "@hotwired/turbo-rails";

    // at end of file add initialize StimulusReflex w/top-level await
  
        const consumer = await cable.getConsumer()
        StimulusReflex.initialize(application, { consumer, debug: true });


10. rails g scaffold Player name:string age:integer contact:integer --no-jbuilder

11. rails g stimulus_reflex PlayerSearch

12. bundle add tailwindcss-rails

13. rails tailwindcss:install


Run server in dev environment 

./bin/dev



Followed links for understanding
1. https://docs.stimulusreflex.com/hello-world/quickstart
2. https://www.colby.so/posts/live-search-with-rails-and-stimulusreflex
3. https://blog.minthesize.com/stimulus-reflex-importmaps
4. https://www.colby.so/posts/real-time-previews-with-stimulus-reflex
