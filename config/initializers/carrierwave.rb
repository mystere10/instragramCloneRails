CarrierWave.configure do |config|
  config.cache_storage = :file

  Cloudinary.config do |config|
    config.cache_storage = :file
    config.cloud_name = ENV.fetch('CLOUDINARY_NAME')
    config.api_key = ENV.fetch('CLOUDINARY_API_KEY')
    config.api_secret = ENV.fetch('CLOUDINARY_API_SECRET')
    config.cdn_subdomain = true
  end
end
