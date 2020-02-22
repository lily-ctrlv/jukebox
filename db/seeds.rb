# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users...'
james = User.create!(
  email: 'james@jukebox.org',
  password: '123456',
  display_name: 'jukebox_james',
  balance: 1000,
  dj: false)
eric = User.create!(
  email: 'eric@jukebox.org',
  password: '123456',
  display_name: 'jukebox_eric',
  balance: 2000,
  dj: false)
lili = User.create!(
  email: 'lili@jukebox.org',
  password: '123456',
  display_name: 'jukebox_lili',
  balance: 500,
  dj: false)
jamie = User.create!(
  email: 'jamie@jukebox.org',
  password: '123456',
  display_name: 'jukebox_jamie',
  balance: 800,
  dj: false)
shirley = User.create!(
  email: 'shirley@jukebox.org',
  password: '123456',
  display_name: 'dj_shirley',
  balance: 0,
  dj: true)
puts 'Users created!'

puts 'Creating tracks...'
juice = Track.create!(
  title: 'Juice',
  artist: 'Lizzo',
  album: 'Cuz I Love You')
shake_it_off = Track.create!(
  title: 'Shake It Off',
  artist: 'Taylor Swift',
  album: '1989')
i_like_me_better = Track.create!(
  title: 'I Like Me Better',
  artist: 'Lauv',
  album: 'I Met You When I Was 18.')
someone_you_loved = Track.create!(
  title: 'Someone You Loved',
  artist: 'Peter Capaldi',
  album: 'Divinely Uninspired To A Hellish Extent')
worship = Track.create!(
  title: 'Worship',
  artist: 'Years & Years',
  album: 'Communion')
lost_in_japan = Track.create!(
  title: 'Lost In Japan',
  artist: 'Shawn Mendes',
  album: 'Shawn Mendes')
no_goodbyes = Track.create!(
  title: 'No Goodbyes',
  artist: 'Dua Lipa',
  album: 'Dua Lipa (Deluxe)')
the_wire = Track.create!(
  title: 'The Wire',
  artist: 'HAIM',
  album: 'Days Are Gone')
islands = Track.create!(
  title: 'Islands',
  artist: 'The xx',
  album: 'xx')
high_hopes = Track.create!(
  title: 'High Hopes',
  artist: 'Kodaline',
  album: 'In A Perfect World (Deluxe)')
puts 'Tracks created!'

puts 'Creating venues...'
pryzm = Venue.create!(
  name: 'Pryzm - Kingston',
  postcode: 'KT1 1QP')
queen_of_hoxton = Venue.create!(
  name: 'Queen of Hoxton',
  postcode: 'EC2A 3JX')
puts 'Venues created!'

date_time = Time.new
start_date_time = Time.new(date_time.year, date_time.month, date_time.day, date_time.hour, 0, 0)
end_date_time = Time.new(date_time.year, date_time.month, date_time.day, date_time.hour + 3, 0, 0)

puts 'Creating events...'
fomo_friday = Event.create!(
  name: 'Fomo Friday',
  theme: 'Pop',
  venue_id: pryzm.id,
  user_id: shirley.id,
  start_date_time: start_date_time,
  end_date_time: end_date_time)
puts 'Events created!'
just_juice = Event.create!(
  name: 'Just Juice',
  theme: 'Pop',
  venue_id: queen_of_hoxton.id,
  user_id: shirley.id,
  start_date_time: start_date_time,
  end_date_time: end_date_time)
puts 'Events created!'

puts 'Creating event tracks...'
juice_event_track = EventTrack.create!(
  track_id: juice.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 1)
worship_event_track = EventTrack.create!(
  track_id: worship.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 2)
shake_it_off_event_track = EventTrack.create!(
  track_id: shake_it_off.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 3)
puts 'Created event tracks!'

puts 'Creating bids...'
Bid.create!(
  amount: 50,
  event_track_id: juice_event_track.id,
  user_id: james.id
  )
Bid.create!(
  amount: 25,
  event_track_id: worship_event_track.id,
  user_id: james.id
  )
Bid.create!(
  amount: 10,
  event_track_id: shake_it_off_event_track.id,
  user_id: james.id
  )
Bid.create!(
  amount: 30,
  event_track_id: juice_event_track.id,
  user_id: eric.id
  )
Bid.create!(
  amount: 10,
  event_track_id: worship_event_track.id,
  user_id: lili.id
  )
Bid.create!(
  amount: 40,
  event_track_id: shake_it_off_event_track.id,
  user_id: jamie.id
  )
puts 'Created bids!'

puts 'Tallying total bids...'
juice_bids = Bid.where(event_track_id: juice_event_track.id)
total_juice_bids = juice_bids.sum { |b| b.amount }
juice_event_track.update!(total_bid_amount: total_juice_bids)

worship_bids = Bid.where(event_track_id: worship_event_track.id)
total_worship_bids = worship_bids.sum { |b| b.amount }
worship_event_track.update!(total_bid_amount: total_worship_bids)

shake_it_off_bids = Bid.where(event_track_id: shake_it_off_event_track.id)
total_shake_it_off_bids = shake_it_off_bids.sum { |b| b.amount }
shake_it_off_event_track.update!(total_bid_amount: total_shake_it_off_bids)
puts 'Total bids tallied!'

