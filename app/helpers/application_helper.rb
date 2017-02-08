module ApplicationHelper
  def average_rating(restaurant)
    restaurant.reviews.empty? ? "rate it!" : (restaurant.reviews.inject(1) { |sum, review| sum + review.rating}.to_f/restaurant.reviews.size.to_f).round(1)
  end
end
