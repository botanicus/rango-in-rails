# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rango-in-rails_session',
  :secret      => 'a75b3c90e581c7f8c093f1b62bbd2c5867e510ee90b74430b7a9e6d44cf9bb489b8bc8ce87f4a21003262b2d4243fe6946a3890ea5c78ceeec4213ce10e248a6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
