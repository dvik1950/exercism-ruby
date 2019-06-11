class Nucleotide

  def self.from_dna(dna)
      raise ArgumentError if dna.match(/[^ATCG]/)
      dna.split('')
  end

end

class Array

  def histogram
    nucleotide_counter = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    nucleotide_counter.tap {|h| self.each {|nucleotide| h[nucleotide] += 1 }}
  end

end

