json.id review.id
json.text review.text
json.user review.user
json.event review.event
json.created_at review.created_at.in_time_zone("America/Chicago").strftime("%b %e, %l:%M %p")
