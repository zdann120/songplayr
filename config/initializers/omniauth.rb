Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  provider :spotify, ENV['SPOTIFY_KEY'], ENV['SPOTIFY_SECRET'], scope: 'playlist-read-private user-read-private user-read-email'
end
