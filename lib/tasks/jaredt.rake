namespace :jared do
  def ping_home(base_url)
    thread = Thread.new do
      Rails.logger.info("I'm awake! I'm awake.")
      Net::HTTP.get_response(URI.parse(base_url))
      Rails.logger.info("I'm sorry for sleeping and for lying about it.")
    end

    thread.join
  end

  desc 'This task can be called by the Heroku scheduler add-on'
  task heroku: :environment do
    if ENV['HEROKU_APP_NAME'].to_s.blank?
      Rails.logger.info('No Heroku app name to wake up')
      next
    end

    ping_home("https://#{ENV['HEROKU_APP_NAME']}.herokuapp.com")
  end

  desc 'This task can be called by a scheduler'
  task custom: :environment do
    if ENV['WAKE_UP_URL'].to_s.blank?
      Rails.logger.info('No url to wake up')
      next
    end

    ping_home(ENV['WAKE_UP_URL'].to_s)
  end
end
