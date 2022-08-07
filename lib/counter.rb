require_relative './database_connection'

class Counter
  def count
    result = DatabaseConnection.query("SELECT * FROM counter WHERE id=1;")
    result[0]['count'].to_i
  end

  def increment
    read_count = count
    result = DatabaseConnection.query("UPDATE counter SET count = '#{read_count + 1}' WHERE id=1;")
  end

  def self.instance
    @counter ||= Counter.new
  end
end
