# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_text2rails_app_session',
  :secret      => '42e70c60db79425ccf2cb4a0efad1a90a00b96b9dc3a65e3bcb00dd69872f45a417cc8953761757a52ad4e75012f0ba9d06b763c0aa5d9adb7f58043f7d88f4c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
