class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    match_data = @line.match(/\[(\w+)\]/)
    if match_data
      match_data[1].downcase
    end
  end

  def reformat
    match_data = @line.match(/\[(\w+)\]\:([\w|\s]+)/)
    "#{match_data[2].strip} (#{match_data[1].downcase})"
  end
end
