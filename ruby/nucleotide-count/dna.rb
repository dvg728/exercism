require 'pry'

class DNA
  attr_reader :molecules
  attr_accessor :nucleotides, :count

  def initialize(molecules)
    @molecules = molecules.split("")
    validation
    @count = 0
    @nucleotides = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @nucleotides.default = 0
    incrementing(@molecules)
  end

  def validation
    valid_molecules = %w(A T C G)
    validated_molecules =  @molecules.all? { |m| valid_molecules.include?(m) }
    unless validated_molecules
      raise ArgumentError
    end
  end

  def count(molecule)
    unless ["A", "T", "C", "G", "U"].include?(molecule)
      raise ArgumentError
    else
      @nucleotides[molecule]
    end
  end

  def incrementing(molecule)
    @molecules.each do |s|
      if @nucleotides.include?(s)
        @nucleotides[s] += 1
      end
    end
  end

  def nucleotide_counts
    @nucleotides
  end
end
