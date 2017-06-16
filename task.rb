require 'date'

class Task < Post
  def initialize
    super
    @due_date = Time.now
  end2

  def read_from_console
    puts "What to do?"
    @text = STDIN.gets.chomp

    puts "What day and time?"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \\n\r n\r"

    deadline = "When to end: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
