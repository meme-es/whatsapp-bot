class IDontKnow
  def initialize
    @picture = []
    @picture.push('http://www.gamesdash.com/limg/1/158/president-i-dont-know.jpg')
    @picture.push('http://commentpics.in/wp-content/uploads/2016/01/1-5.jpg')
    @picture.push('https://blog.frontrunnerpro.com/wp-content/uploads/2016/01/promotion-killers-not-understanding-business-300x200.jpg')
    @picture.push('https://media.makeameme.org/created/uhhh-i-dont-5be5d9.jpg')
  end

  def picture
    @picture[rand(4)]
  end
end
