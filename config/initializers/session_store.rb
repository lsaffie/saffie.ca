# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_saffie.ca_session',
  :secret      => '3ed2f253b10035b6eaefe0d18c5e9ded05562a89316e2d2dcb83f1dfedf3f1387aa7a5ff3596ed5f90b2da7eef29a9df6e5e65d495ec9c018ca2a06dc58e303b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
