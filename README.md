# Sidekiq Redis Test

A testing app to learn background jobs.

I have a /report/:num route that process a background task. When this route is accessed, it calls a Sidekiq worker method with some params to run in background (just a simple puts and a sleep method) and returns a json.

Remember:
- Install Redis `sudo apt install redis`
- Run Redis server: `redis-server` and if there is 'Address already in use' error, stop the service `service redis-server stop` and try again.
- The worker must `include Sidekiq::Worker`, and the method `perform` is the one sidekiq uses to call the background task.
- To check the tasks in the console, start sidekiq with `sidekiq -c num_of_threads`. It must be running to start dequeuing tasks.
- To include a '/sidekiq' in the routes, `require 'sidekiq/web'` and `mount Sidekiq::Web => '/sidekiq'`
- Maybe `gem sinatra` is necessary, besides `gem sidekiq`

Followed some instructions from the video: https://www.youtube.com/watch?v=GBEDvF1_8B8