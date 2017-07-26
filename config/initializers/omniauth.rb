OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '31593261698-6bb8asmv7p3ki8pap5cdaklpiuud1403.apps.googleusercontent.com', 'Ep9epVr2_oW14AzithNVT3rL', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end