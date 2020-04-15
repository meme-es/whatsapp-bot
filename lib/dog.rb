class Dog
  def initialize
    @url_fact = 'https://dog-api.kinduff.com/api/facts'
    @url_picture = 'https://dog.ceo/api/breeds/image/random'
  end

  def fact
    response = HTTP.get(@url_fact)
    JSON.parse(response.to_s)['facts'].first
  end

  def picture
    response = HTTP.get(@url_picture)
    JSON.parse(response.to_s)['message']
  end
end
