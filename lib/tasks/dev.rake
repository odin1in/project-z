namespace :dev do
  task fake: %i[db:reset environment] do
    5.times.each do |i|
      Article.create!(title: "news_#{i}", content: 'content')
    end
  end
end
