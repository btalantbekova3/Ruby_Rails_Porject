# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require "faker"

puts "Seeding posts..."

Post.create!(
  title: "ANNA KARENINA by Leo Tolstoy - Part 1 - FULL AudioBook",
  video_url: "https://www.youtube.com/embed/-kjWJjtMwuQ?si=4z_z8nHnbJQ25rSM",
  created_at: Faker::Time.backward(days: 7),
  updated_at: Time.current,
  pro: false
)

Post.create!(
  title: "The ENTIRE Story of Greek Mythology",
  video_url: "https://www.youtube.com/embed/_fxCKCcBVQs?si=e0Rw4m9vSVH0zKTb",
  created_at: Faker::Time.backward(days: 7),
  updated_at: Time.current,
  pro: true
)


Post.create!(
  title: "Grit: The Power of Passion and Perseverance | Angela Lee Duckworth | TEDx Talks",
  video_url: "https://www.youtube.com/embed/H14bBuluwB8?si=7Vl7fHaBIQ7nqcJp",
  created_at: Faker::Time.backward(days: 5),
  updated_at: Time.current,
  pro: true
)

Post.create!(
  title: "The Art of War audiobook by Sun Tzu",
  video_url: "https://www.youtube.com/embed/xP2oM1xAUYQ?si=bJ1K8Ya_YmV2vWDD",
  created_at: Faker::Time.backward(days: 3),
  updated_at: Time.current,
  pro: false
)


Post.create!(
  title: "How to Deploy Rails 8 with Kamal to DigitalOcean",
  video_url: "https://www.youtube.com/embed/9mHGKBoYeNI?si=EECybhpr1TdTbTXS",
  created_at: Faker::Time.backward(days: 7),
  updated_at: Time.current,
  pro: false
)



puts "Email: #{Rails.application.credentials.dig(:admin, :email).inspect}"

admin_email = Rails.application.credentials.dig(:admin, :email)
admin_password = Rails.application.credentials.dig(:admin, :password)

if admin_email.present? && admin_password.present?

  unless User.exists?(email: admin_email)

    User.create!(
      email: admin_email,
      password: admin_password,
      password_confirmation: admin_password,
    )

    puts "Admin user created"

  else

    puts "Admin user already exists"

  end

else

  puts "Admin credentials not found in credentials file"

end

puts "Done seeding!"