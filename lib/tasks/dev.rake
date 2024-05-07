namespace :dev do
  desc "Add items to the adatabase"
  task add_items: :environment do
    50.times do
      Item.create(
        title: Faker::Lorem.sentence.delete("."),
        body: Faker::Lorem.paragraph(sentence_count: rand(100..200)),
      )
    end
  end
end
