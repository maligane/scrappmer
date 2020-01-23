require 'rubygems'
require 'nokogiri' 
require 'open-uri' 
   
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  crypto_names = page.xpath('//td[@class ="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]/div')
  crypto_names_array = []
  crypto_names.each do |name|
    name = name.text 
    crypto_names_array << name
  end

    print crypto_names_array
    
crypto_price = page.xpath('//td[@class ="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')
crypto_price_array = []
crypto_price.each do |price|
  price = price.text 
  crypto_price_array << price
end  
    print crypto_price_array
    

    # cryptocurrency = Hash[all_cryptocurrency.zip(cryptocurrency_value)]
    # puts cryptocurrency
    #crypto1_array = []
   # crypto1.each do |crypto|
      #crypto1 = crypto1.text
      #crypto1 << crypto2
     # puts crypto1
    #end


   

