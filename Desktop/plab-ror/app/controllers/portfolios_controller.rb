class PortfoliosController < ApplicationController

  def players
    require 'open-uri'
    require 'nokogiri'

    require 'webdrivers'

    browser = Watir::Browser.new
    browser.goto('https://www.footballindex.co.uk/top-200?login=true')
    # Login
    modal = browser.div(id: 'modal-container').wait_until_present
    modal.text_field(placeholder: "Email address").set 'mikeyettlinger@gmail.com'
    modal.text_field(placeholder: "Password").set 'mikey125'
    modal.button(id: 'login').click

    links = []

    # find the 'Portfolio button'
    browser.as.each do |link|
      links << link
    end

    # click the 'Portfolio button'
    links[12].wait_until_present.click

    @portfolio = []
    players = []

    browser.divs.each do |div|
      if div.class == "Pic__container__name__26P8X".wait_until(&:present?)
         @portfolio << div.text
      end
    end

end

def stats
end

def expiry
end

end
