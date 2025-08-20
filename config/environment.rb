# Ensure Logger is loaded for Ruby 3.3.5 compatibility
require 'logger'
# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
