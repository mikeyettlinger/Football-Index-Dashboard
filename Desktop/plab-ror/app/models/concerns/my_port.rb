module MyPort
  require 'json'
  require 'open-uri'
  require 'rest-client'

  def load_port
    url = 'https://api-prod.footballindex.co.uk/portfolio'

    response = RestClient.get(url, host: "api-prod.footballindex.co.uk", method: :get, content_type: "application/json", accept: "application/json", "x-access-token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1pa2V5ZXR0bGluZ2VyQGdtYWlsLmNvbSIsImlkIjo4MDk1MSwiZ3JvdXAiOiJ1c2VycyIsImRpc3BsYXlOYW1lIjoiTWlrZXkgRSIsInJlZmVycmFsY29kZSI6IjgwMDgxIiwiaWF0IjoxNTk0NjMzMzA5fQ.Z4m6pxcKE5H2hBdMsWw43YTZSChJKcTzPfJ9eesJLcU")

    @players = JSON.parse(response.body)

    # Define variables here
    @summary = @players['totalvalues']
    @day_summary = @summary['d']
    @week_summary = @summary['w']
    @all_time_summary = @summary['t']

    # All time profit
    @all_time_profit = @summary['t']['pl']
    # All time profit percent
    @all_time_profit_percent = @summary['t']['plpe']

    # gets players array
    @portfolio = []

    @players['totals'].to_a.each do |player|
      @portfolio << {
        id: player[1]['id'],
        name: player[1]['name'],
        team: player[1]['team'],
        quantity: player[1]['qty'] + player[1]['sellqty'],
        portquantity: player[1]['qty'],
        sellquantity: player[1]['sellqty'],
        # price bought at -- >
        price: player[1]['price'],
        # current buy price -- >
        buyingprice: player[1]['buyingprice'],
        # instant sell price -- >
        sellingprice: player[1]['sellingprice'],
        buyingvalue: player[1]['buyingvalue'],
        dividends: player[1]['dividends'],
        lastpurchasedate: player[1]['lastPurchaseDate'],
        serverurl: player[1]['serverurl'],
        optimized_image: player[1]['optimized-image']
      }
    end

    # sorting players by header
    @portfolio.sort_by! { |hsh| hsh[:quantity] }
  end

  def load_transactions
    url = 'https://api-prod.footballindex.co.uk/transactions'

    response = RestClient.get(url, host: "api-prod.footballindex.co.uk", method: :get, content_type: "application/json", accept: "application/json", "x-access-token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1pa2V5ZXR0bGluZ2VyQGdtYWlsLmNvbSIsImlkIjo4MDk1MSwiZ3JvdXAiOiJ1c2VycyIsImRpc3BsYXlOYW1lIjoiTWlrZXkgRSIsInJlZmVycmFsY29kZSI6IjgwMDgxIiwiaWF0IjoxNTk0NjMzMzA5fQ.Z4m6pxcKE5H2hBdMsWw43YTZSChJKcTzPfJ9eesJLcU")

    @transactions = JSON.parse(response.body)
  end

  def load_player

    url = "https://api-prod.footballindex.co.uk/v2/timeseries?id=trent-alexander-arnold&period=1y&interval=5d"

    response = RestClient.get(url, host: "api-prod.footballindex.co.uk", method: :get, content_type: "application/json", accept: "application/json")

    @player_graph = JSON.parse(response.body)

    @timestamps = []
    @price = []

    @player_graph['items'].each do |time|
      @timestamps << time['key']
      @price << time['avgPrice']
    end


  end

end
