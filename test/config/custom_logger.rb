class CustomLogger
  def initialize(output=STDOUT)
    @output = output
  end

  def write(msg)
    @output.puts msg
    @output.flush
  end
end

log_requests
logger CustomLogger.new(STDOUT)
