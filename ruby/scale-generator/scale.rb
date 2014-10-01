class Scale
  attr_reader :name, :intervals, :tonic

  def initialize(tonic, scale, intervals = nil)
    @tonic = tonic.capitalize
    @name = "#{@tonic} #{scale}"
    @intervals = intervals
  end

  def pitches
    return calculate_chromatic_scale unless intervals
    calculating_scale_from_intervals
  end

  def calculating_scale_from_intervals
    index = 0
    intervals.each_char.with_object([]) do |c, collector|
      collector << calculate_chromatic_scale[index]
      index += interval_to_half_steps[c]
    end
  end

  def interval_to_half_steps
    {
      'm' => 1,
      'M' => 2,
      'A' => 3
    }
  end

  def self.respell(pitch)
    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    if pitch.end_with?('#')
      pitch[0].next + "b"
    elsif pitch.end_with?('b')
      i = letters.index(pitch[0])
      letters[i - 1] + '#'
    end
  end

  def chromatic_scale
    if tonic.match(/.b/)
      ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'Cb']
    else
      ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    end
  end

  def calculate_chromatic_scale
    if tonic == 'C'
      chromatic_scale
    else
      i = chromatic_scale.index(tonic)
      chromatic_scale[i..-1] + chromatic_scale[0..i - 1]
    end
  end

end
