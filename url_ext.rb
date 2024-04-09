def get_urls(x)
    url_string = x.scan()
    url_string.each { |url| puts url }
end

if ARGV.empty?
    puts "Help: "
    puts "ruby url_ext.rb <input>"
else
    user_input = ARGV.join(" ")
    get_urls(user_input)
end