def parse(x)
    invoices = []
    x.each_line do |i|
        string_match = i.match()
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
