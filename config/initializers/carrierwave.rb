CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['amazon_s3_id'],
    aws_secret_access_key: ENV['amazon_s3_key']
  }
  config.fog_directory = 'advent420'
end
