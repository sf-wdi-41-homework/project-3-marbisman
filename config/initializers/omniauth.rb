keys = Rails.application.secrets

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify,'f30dab27d9a441a2b0b6e230916d3502','67c38943a807432ba06d1aff8af68eeb',
  scope: 'playlist-read-private user-read-private user-read-email'
end
