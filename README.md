To run Sidekiq :
bundle exec sidekiq -r ./worker.rb

To run Client :
bundle exec irb -r ./worker.rb

To run Web UI ( on Rack ) :
rackup


To test the Jobs: run following on Console ->
OurWorker.perform_async "easy"
OurWorker.perform_async "super_hard"
OurWorker.perform_async "hard"
OurWorker.perform_in 60,"Simple"

And you can see status in WebUI(Sidekiq) on browser at http://127.0.0.1:9292




