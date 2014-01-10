class ETL

  def self.transform(data)
    result = {}

    data.each do |id, characters|
      Array(characters).each do |character|
        result[character.downcase] = id
      end
    end

    result
  end

end
