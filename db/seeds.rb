20.times do |n|
    a = Article.new
    a.author_first_name =  Faker::Name.first_name
    a.author_last_name =  Faker::Name.last_name 
    a.article_year =  Faker::Number.between(from = 1986, to = 2015) 
    a.title = Faker::Company.bs 
    a.body = Faker::Lorem.sentences(3)
    a.pub_name = Faker::Company.name
    a.article_pg = Faker::Number.number(3)

    a.save
end