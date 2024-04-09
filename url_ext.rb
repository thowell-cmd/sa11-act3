def get_urls(x)
    url_string = x.scan(/(?:https?|ftp):\/\/[\S]+/)
    url_string.each { |url| puts url }
end

if ARGV.empty?
    puts "Help: "
    puts "ruby url_ext.rb <input>"
else
    user_input = ARGV.join(" ")
    get_urls(user_input)
end

# sample_text = "Visit our site at http://www.example.org for more information. 
# Check out our search page at https://example.com/search?q=ruby+regex. 
# Don’t forget to ftp our resources at ftp://example.com/resources."
# get_urls(sample_text)