20.times do
  Article.create(
    title: Faker::Coffee.blend_name,
    body: Faker::Hipster.paragraph
  )
end
