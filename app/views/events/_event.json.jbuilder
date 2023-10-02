json.id event.id
json.home_team event.home_team
json.away_team event.away_team
json.city event.city
json.stadium event.stadium
json.scheduled_date event.scheduled_date.in_time_zone("America/Chicago").strftime("%A %-l:%M %p %b %-d, %Y")
# json.is_favorited favorited_events.include?(event)
