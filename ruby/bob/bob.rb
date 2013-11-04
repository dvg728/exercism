class Bob

  def hey(param)
    if param == ""
      "Fine. Be that way!"
    elsif param == '    '
      "Fine. Be that way!"
    elsif param.upcase == param
      "Woah, chill out!"  
    elsif param[-1] == "?"
      "Sure."
    else
    "Whatever."
    end
  end


end
