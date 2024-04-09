def parse(x)
    invoices = []
    x.each_line do |i|
        string_match = i.match(/(\d{2}\/\d{2}\/\d{4}) - (\d+) - ([\w\s]+) - (\d+\.\d{2})/)
        if string_match
            date = string_match[1]
            invoice_num = string_match[2]
            client_name= string_match[3]
            amount = string_match[4]
            invoices << { Date: date, Number: invoice_num, client: client_name, amount: amount }
        end
    end
    invoices
end

if ARGV.empty?
    puts "Help: "
    puts "ruby invoice_parser.rb <file.txt>"
else
    user_input = ARGV[0]
    text = File.read(user_input)
    invoices = parse(text)

    invoices.each do |j|
        puts "Date: #{j[:date]}, Number: #{j[:invoice_num]}, Name: #{j[:client_name]}, Sum: $#{j[:amount]}""
    end
