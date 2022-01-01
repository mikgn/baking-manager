# frozen_string_literal: true

Product.create!(
  title: 'Молоко',
  price_ruble: 125,
  volume_liter: 1
)

Product.create!(
  title: 'Мука',
  price_ruble: 95,
  weight_kg: 1
)

Product.create!(
  title: 'Яйцо',
  price_ruble: 9,
  count: 1
)

Product.create!(
  title: 'Малина',
  price_ruble: 1200,
  weight_kg: 1
)

puts
puts '#4 Products created'

if Rails.env.development?
  AdminUser.create!(
    email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password'
  )

  puts '#Admin created'
end
