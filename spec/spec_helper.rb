require 'rspec'

RSpec.configure do |c|
  c.alias_it_should_behave_like_to :it_has, 'has' # For interface shared examples
end

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }