OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1501364136837421', 'b3ab16af704a928daf2c0105c2056842'
end