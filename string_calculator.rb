class StringCalculator
    def self.add(input)
        return 0 if input.empty?
      
        delimiter = ","
        if input.start_with?("//")
          delimiter_line, input = input.split("\n", 2)
          delimiter = delimiter_line[2]
        end
      
        input.gsub!("\n", delimiter)
        input.split(delimiter).map(&:to_i).sum
    end      
end