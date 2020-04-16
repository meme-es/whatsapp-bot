class Cat
  def initialize
    @url_fact = 'https://catfact.ninja/fact'
    @url_picture = 'https://api.thecatapi.com/v1/images/search'
  end

  def fact
    response = HTTP.get(@url_fact)
    JSON.parse(response.to_s)['fact']
  end

  def picture
    response = HTTP.get(@url_picture)
    JSON.parse(response.to_s).first['url']
  end
end
