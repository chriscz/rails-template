# Try to require the given gem and run the given block on success, else skip the block
def try_require(filename, &block)
  require filename
rescue LoadError
else
  block.call unless block.nil?
end

# Extend the ActiveSupport::TestCase class by module or block
def testcase_mixin(mod = nil, &block)
  if mod && block
    raise "Either a module or a block must be used"
  end

  if defined?(ActiveSupport)
    if mod
      ActiveSupport::TestCase.send(:include, mod)
    else
      ActiveSupport::TestCase.instance_eval(&block)
    end
  end
end

def disable_backtrace_cleaners!
  Minitest.backtrace_filter = nil
  Rails.backtrace_cleaner.remove_silencers!
end

def debug_active_record!
  ActiveRecord::Base.verbose_query_logs = true
  ActiveRecord::Base.logger = Logger.new($stderr)
end

