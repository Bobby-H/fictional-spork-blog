namespace :db do

  desc "populates the db w/ blog_posts"
  task populate: :environment do
    BlogPost.destroy_all
    200.times do
      BlogPost.create!(
      title: Faker::Hipster.sentence,
      author: Faker::Name.name,
      blog_entry: Faker::Hipster.paragraph(10)
      )
    end
  end
end

namespace :db do
  desc "populates w/ comments"
    task populate: :environment do
      Comment.destroy_all
      200.times do
        Comment.create!(
        author: Faker::Name.name,
        comment_entry: Faker::Hipster.paragraph(1)
        )
      end
    end
end
