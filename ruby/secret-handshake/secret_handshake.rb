class SecretHandshake
  attr_reader :command

  def initialize(command)
    @command = command
  end

  def commands
    if available_commands.include?(@command)
      available_commands[@command]
    else
      []
    end
  end

  def available_commands
    { 1 => ["wink"],
      2 => ["double blink"],
      4 => ["close your eyes"],
      8 => ["jump"],
      3 => ["wink","double blink"],
      19 => ["double blink","wink"],
      31 => ["jump","close your eyes","double blink","wink"]
    }
  end

end
