json.id favorite.id
json.user_id favorite.user_id
json.event_id favorite.event_id
json.event favorite.event
json.time_edit favorite.event.scheduled_date.in_time_zone("America/Chicago").strftime("%A %-l:%M %p %b %-d, %Y")
