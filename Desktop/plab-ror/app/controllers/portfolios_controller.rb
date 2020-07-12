class PortfoliosController < ApplicationController

    def players

      require 'open-uri'
      require 'nokogiri'

      # url = "https://www.footballindexedge.com/price-master-q3-2020"

      # html_file = open(url).read
      # @html_doc = Nokogiri::HTML(html_file)

      # dir = "https://www.footballindex.co.uk/portfolio"
      # doc = Nokogiri::HTML(open(dir))
      # @table = doc.search('div.Row__row___qFVrH')
      # @table1 = doc.xpath("//div[@class='Row__row___qFVrH']")
      # @table1 = doc.search('div.row').children

      require 'webdrivers'


      browser = Watir::Browser.new
      browser.goto('https://www.footballindex.co.uk/top-200?login=true')
      # browser.goto('https://www.footballindex.co.uk/portfolio')
      # browser.element(name: "TopBar__topbar__login__loginBtn___Jm9DY").click
      # Inputs__input___1sG_6  Inputs__input__alwaysShowPlaceholder___EVCvy
      modal = browser.div(id: 'modal-container').wait_until_present
      modal.text_field(placeholder: "Email address").set 'mikeyettlinger@gmail.com'
      modal.text_field(placeholder: "Password").set 'mikey125'
      modal.button(id: 'login').click
      browser.goto('https://www.footballindex.co.uk/portfolio')


      # portfolio = []
      # players = []

      # browser.divs.each do |div|      #for each div on the page
      #   if div.class == "Pic__container__name__26P8X".wait_until(&:present?)      #if the class == "error"
      #      portfolio << div    #add it to our array
      #      raise
      #   end
      #   if div.class == "Row__row___qFVrH"       #if the class == "error"
      #      players << div    #add it to our array
      #      raise
      #   end
      # end
    end

    def stats
    end

    def expiry
    end

end
