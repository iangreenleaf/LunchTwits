OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :stocktwits, ENV['STOCKTWITS-KEY'], ENV['STOCKTWITS-SECRET'], scope: "read,publish_messages"
end