class TwitterApi

  def self.usertimeline
    client.user_timeline("tatasutiadi")
  end

  def self.hometimeline
    # client.home_timeline
    client.search("#PersibDay", lang: "in",count: 100,exclude_replies: true ,include_rts: false)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CUSTOMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CUSTOMER_SECRET']
      # config.access_token        = "YOUR_ACCESS_TOKEN"
      # config.access_token_secret = "YOUR_ACCESS_SECRET"
    end
  end
end
