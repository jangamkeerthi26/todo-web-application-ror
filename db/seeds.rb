# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Task.create!(
  title: "Old Task - February 2024",
  description: "A task from last year Feb",
  completed: false,
  created_at: Date.new(2024, 2, 5)
)

Task.create!(
  title: "Old Task - May 2025",
  description: "A task from last month",
  completed: true,
  created_at: 1.month.ago
)
