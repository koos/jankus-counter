require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'count_manager_test')

  # Clear the counter table
  connection.exec("DROP TABLE counter;")
  connection.exec("CREATE TABLE counter(id SERIAL PRIMARY KEY, count integer);")
  connection.exec("INSERT INTO counter (count) VALUES (0);")
end
