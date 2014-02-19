class DNA
  attr_reader :dna_string
  attr_accessor :nucleotide_counts

  def initialize(dna_string)
    @dna_strings = dna_string.split("")
    @nucleotide_counts ||= {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
  end

  def count(dna_strand)
    @nucleotide_counts.each do |k,v|

    end
  end

  # iterate through dna_string
  # cound how many times a specific_dna strain is contained inside of the
  # dna_string
  # update the nucleotide_counts has with correct numbers


end
