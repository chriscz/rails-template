try_require "simplecov" do
  # SimpleCov.start('rails') do
  SimpleCov.start do
    adapters.delete(:root_filter)
    filters.clear

    add_filter { |src| (src.filename !~ /^#{Regexp.quote(SimpleCov.root)}/) }
    add_filter { |src| (src.filename =~ /^#{Regexp.quote(File.join(SimpleCov.root, 'test/'))}/) }
  end
end
