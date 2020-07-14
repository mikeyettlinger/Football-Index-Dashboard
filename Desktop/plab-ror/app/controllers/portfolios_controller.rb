class PortfoliosController < ApplicationController



  def players
    # require 'open-uri'
    # require 'nokogiri'

    # require 'webdrivers'

    # browser = Watir::Browser.new
    # browser.goto('https://www.footballindex.co.uk/top-200?login=true')
    # # Login
    # modal = browser.div(id: 'modal-container').wait_until_present
    # modal.text_field(placeholder: "Email address").set 'mikeyettlinger@gmail.com'
    # modal.text_field(placeholder: "Password").set 'mikey125'
    # modal.button(id: 'login').click

    # links = []

    # # find the 'Portfolio button'
    # browser.as.each do |link|
    #   links << link
    # end

    # browser.goto(links[12].href)

    # divs = []

    # links[12].href.divs.each do |div|
    #   if divs.class == "Row__row___qFVrH"
    #     divs << div
    #   end

    # raise

    # end

    # require 'json'
    # require 'rest-client'


    # url = 'https://api-prod.footballindex.co.uk/portfolio'

    # @response = RestClient.get(url, host: "api-prod.footballindex.co.uk", method: :get, content_type: "application/json", accept: "application/json", "x-access-token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1pa2V5ZXR0bGluZ2VyQGdtYWlsLmNvbSIsImlkIjo4MDk1MSwiZ3JvdXAiOiJ1c2VycyIsImRpc3BsYXlOYW1lIjoiTWlrZXkgRSIsInJlZmVycmFsY29kZSI6IjgwMDgxIiwiaWF0IjoxNTk0NjMzMzA5fQ.Z4m6pxcKE5H2hBdMsWw43YTZSChJKcTzPfJ9eesJLcU")

    # @players = JSON.parse(@response.body)

    # # gets players array
    # @portfolio = []

    # @players['totals'].to_a.each do |player|
    #   @portfolio << {
    #     name: player[1]['name'],
    #     team: player[1]['team'],
    #     quantity: player[1]['qty'] + player[1]['sellqty'],
    #     portquantity: player[1]['qty'],
    #     sellquantity: player[1]['sellqty'],
    #     price: player[1]['price'],
    #     buyingprice: player[1]['buyingprice'],
    #     sellingprice: player[1]['sellingprice'],
    #     dividends: player[1]['dividends'],
    #     lastpurchasedate: player[1]['lastPurchaseDate']
    #   }
    # end

    # @portfolio.sort_by! { |hsh| hsh[:quantity] }

end

def stats
end

def expiry
end

end
