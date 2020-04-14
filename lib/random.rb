class Random
  def initialize
    @picture = []
    @picture.push('http://www.gamesdash.com/limg/1/158/president-i-dont-know.jpg')
    @picture.push('http://commentpics.in/wp-content/uploads/2016/01/1-5.jpg')
    @picture.push('https://blog.frontrunnerpro.com/wp-content/uploads/2016/01/promotion-killers-not-understanding-business-300x200.jpg')
    @picture.push('https://3kboji1hocw1v9hbv1yqesxw-wpengine.netdna-ssl.com/wp-content/uploads/2016/11/idontknowcomp-300x203.jpg')
  end

  def url
    @picture[rand(4)]
  end
end
