require "minitest/focus" # add focus before any test to focus on it
require "minitest/reporters"

Minitest.backtrace_filter = Minitest::BacktraceFilter.new

Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new if ENV["SPEC"]
