class StringCalculator
    def self.add(input)
        return 0 if input.empty?
      
        delimiter = ","
        if input.start_with?("//")
          delimiter_line, input = input.split("\n", 2)
          delimiter = delimiter_line[2]
        end
      
        input.gsub!("\n", delimiter)
        numbers = input.split(delimiter).map(&:to_i)
      
        negatives = numbers.select { |n| n < 0 }
        raise "Negatives not allowed: #{negatives.join(',')}" unless negatives.empty?
      
        numbers.sum
    end  
end