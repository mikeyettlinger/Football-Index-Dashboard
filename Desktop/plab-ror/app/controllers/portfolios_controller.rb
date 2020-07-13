class PortfoliosController < ApplicationController

  def players
    require 'open-uri'
    require 'nokogiri'

    require 'webdrivers'

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

    require 'json'
    require 'rest-client'


    url = 'https://api-prod.footballindex.co.uk/portfolio'

    @response = RestClient.get(url, host: "api-prod.footballindex.co.uk", method: :get, content_type: "application/json", accept: "application/json", "x-access-token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhcnJ5YWNodXJjaGlsbEBnbWFpbC5jb20iLCJpZCI6NDU3OTc3LCJncm91cCI6InVzZXJzIiwiZGlzcGxheU5hbWUiOiJIYXJyeSBDIiwiaWF0IjoxNTkzNTk5MDQzfQ.6Bv67lhyf1DuWzbJp68oYqf5tGxSXBaMnOZF1fj79dI")






    # click the 'Portfolio button'
    # links[12].click

    # @portfolio = []
    # players = []

    # browser.divs.each do |div|
    #   if div.class == "Pic__container__name__26P8X".wait_until(&:present?)
    #      @portfolio << div.text
    #   end
    # end

end

def stats
end

def expiry
end

end
