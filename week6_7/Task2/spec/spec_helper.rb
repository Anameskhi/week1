require "./my_all"
require "./my_any"
require "./my_count"
require "./my_each"
require "./my_each_with_index"
require "./my_inject"
require "./my_map"
require "./my_none"

RSpec.configure do |config|
  
  config.expect_with :rspec do |expectations|
   
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

 
  config.mock_with :rspec do |mocks|
  
    mocks.verify_partial_doubles = true
  end

  
  config.shared_context_metadata_behavior = :apply_to_host_groups


end
