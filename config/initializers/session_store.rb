# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kremlin_admin_session',
  :secret      => 'd767fd39bf5533bf9bd71dcbe47f8be3d1e35397b25c7d8f2386c79bb68fa7bfee925c39ca5030172f70053760028e5bf19a15dd89b4ff45c371955310b34788'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
