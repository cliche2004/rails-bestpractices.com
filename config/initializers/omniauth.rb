require 'openid/store/filesystem'

OMNIAUTH_YAML = Rails.root.join('config', 'omniauth.yml')
OMNIAUTH_CONFIG = YAML.load_file(OMNIAUTH_YAML)[Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, OMNIAUTH_CONFIG['twitter']['key'], OMNIAUTH_CONFIG['twitter']['secret']
  provider :facebook, OMNIAUTH_CONFIG['facebook']['key'], OMNIAUTH_CONFIG['facebook']['secret']
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end
