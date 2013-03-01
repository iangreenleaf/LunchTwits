OmniAuth.config.logger = Rails.logger

stocktwits_api = YAML.load_file("config/oauth.yml")["stocktwits"]
Rails.application.config.middleware.use OmniAuth::Strategies::StockTwits,
  stocktwits_api["key"],
  stocktwits_api["secret"],
  scope: "read,publish_messages"
