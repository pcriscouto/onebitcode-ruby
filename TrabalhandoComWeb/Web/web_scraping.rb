require 'nokogiri'
require 'net/http'
 
https = Net::HTTP.new('onebitcode.com', 443)
# para fazer chamadas https
https.use_ssl = true
 
response = https.get("/")
 
doc = Nokogiri::HTML(response.body)
 
h1 = doc.at('h1')

last_post = doc.at('h3 a')
 
puts h1.content
puts '=' *30
puts last_post.content
puts last_post['href']
puts '=' *30

doc.search('h3 a').each do |a|
    puts a.content
    puts a['href']
    puts '=' *30

end


