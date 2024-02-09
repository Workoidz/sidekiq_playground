require 'sidekiq'

Sidekiq.configure_client do |config|
	config.redis = { db: 1}
end

require 'sidekiq/web'
require 'rack/session/cookie'

use Rack::Session::Cookie, :key => 'rack.session',
                           :path => '/',
                           :secret => '87654321'
                           
run Sidekiq::Web