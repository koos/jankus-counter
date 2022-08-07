require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('count_manager_test')
else
  DatabaseConnection.setup('count_manager')
end
