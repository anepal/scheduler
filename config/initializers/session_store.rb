# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hproject2_session',
  :secret      => '214b02d40a0503c56fc47742674ba1a4976f4584838f4391fa9eae93e938482bdf921547c34bb0664edc8768bcfc7aa5b24f8fe17ce3cb873c83dba9de2e04a1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
