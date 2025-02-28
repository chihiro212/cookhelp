Cloudinary.config do |config|
    config.cloud_name = ENV['CLOUD_NAME']           # .envから読み込む
    config.api_key = ENV['CLOUDINARY_API_KEY']     # .envから読み込む
    config.api_secret = ENV['CLOUDINARY_API_SECRET'] # .envから読み込む
    config.secure = true
    config.cdn_subdomain = true
  end
  