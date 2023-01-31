# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser

    attr_accessor :addresses

    def initialize(addresses)
        @addresses = addresses
    end

    addrs_array = []

    def parse
        if  addresses =~ /,/ && addresses =~ //
            puts "both" 
            addrs_array = addresses.split(/\s|, /)    
        else
            if addresses =~ /,/
                puts "comma-separated value"
                 addrs_array = addresses.split(", ") 
            elsif addresses =~ // 
                puts "Space Delimited"
                addrs_array = addresses.split(" ")
            end
        end
        unique_array = addrs_array.uniq
        return unique_array
    end

end

parser = EmailAddressParser.new("avi@test.com, avi@test.com")

parser.parse