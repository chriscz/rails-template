# This has to come first
require_relative "./support/rails"
require_relative "./support/utils"

# Load everything else from test/support
Dir[File.expand_path("support/**/*.rb", __dir__)].sort.each { |rb| require(rb) }
