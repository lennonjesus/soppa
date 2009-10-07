# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_soppa_step_by_step_session',
  :secret      => '901cd5709c196c9c3e79f3e01442b6ee31f87c6fa8a9aa4d023e96b8ea534609ed7fdf003ef8b7701219ce2f3b6cc8e868c4a6f328a2d55f770045a9e11a2110'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
