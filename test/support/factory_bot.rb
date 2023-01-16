try_require "factory_bot_rails"

try_require "factory_bot" do
  # Ensures that associated entries are created and saved when
  # calling the +build+ factory method instead of +create+
  # see https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md#build-strategies-1
  FactoryBot.use_parent_strategy = false

  testcase_mixin FactoryBot::Syntax::Methods
end
