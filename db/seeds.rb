# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Creating users...'
james = User.new(
  email: 'james@jukebox.org',
  password: '123456',
  display_name: 'jukebox_james',
  balance: 1000,
  dj: false)
james.avatar.attach(io: open('https://avatars3.githubusercontent.com/u/39556334?s=460&v=4'), filename: "james_face.jpg", content_type: "image/jpg")
james.save!
eric = User.new(
  email: 'eric@jukebox.org',
  password: '123456',
  display_name: 'jukebox_eric',
  balance: 2000,
  dj: false)
eric.avatar.attach(io: open('https://avatars2.githubusercontent.com/u/25728050?s=460&v=4'), filename: "eric_face.jpg", content_type: "image/jpg")
eric.save!
lili = User.new(
  email: 'lili@jukebox.org',
  password: '123456',
  display_name: 'jukebox_lili',
  balance: 500,
  dj: false)
lili.avatar.attach(io: open('https://avatars2.githubusercontent.com/u/39335511?s=460&v=4'), filename: "lili_face.jpg", content_type: "image/jpg")
lili.save!
jamie = User.new(
  email: 'jamie@jukebox.org',
  password: '123456',
  display_name: 'jukebox_jamie',
  balance: 800,
  dj: false)
jamie.avatar.attach(io: open('https://avatars2.githubusercontent.com/u/33573418?s=460&v=4'), filename: "jamie_face.jpg", content_type: "image/jpg")
jamie.save!
shirley = User.new(
  email: 'shirley@jukebox.org',
  password: '123456',
  display_name: 'dj_shirley',
  balance: 0,
  dj: true)
shirley.avatar.attach(io: open('https://www.grammy.com/sites/com/files/styles/image_landscape_hero/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_16_9_1578384864.jpg?itok=EHqXQIe6'), filename: "tay_face.jpg", content_type: "image/jpg")
shirley.save!
puts 'Users created!'

puts 'Creating tracks...'
juice = Track.new(
  title: 'Juice',
  artist: 'Lizzo',
  album: 'Cuz I Love You')
juice.cover_photo.attach(io: open('https://images-na.ssl-images-amazon.com/images/I/61h8J%2BY55qL._AC_SX466_.jpg'), filename: "juice_cover.jpg", content_type: "image/jpg")
juice.save!
shake_it_off = Track.new(
  title: 'Shake It Off',
  artist: 'Taylor Swift',
  album: '1989')
shake_it_off.cover_photo.attach(io: open('https://lastfm.freetls.fastly.net/i/u/770x0/eca8390917b83c2c59f69484247d55af.jpg'), filename: "shake_cover.jpg", content_type: "image/jpg")
shake_it_off.save!
i_like_me_better = Track.new(
  title: 'I Like Me Better',
  artist: 'Lauv',
  album: 'I Met You When I Was 18.')
i_like_me_better.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/thumb/6/6f/Lauv_-_I_Met_You_When_I_Was_18.png/220px-Lauv_-_I_Met_You_When_I_Was_18.png'), filename: "lime_me_cover.jpg", content_type: "image/jpg")
i_like_me_better.save!
someone_you_loved = Track.new(
  title: 'Someone You Loved',
  artist: 'Peter Capaldi',
  album: 'Divinely Uninspired To A Hellish Extent')
someone_you_loved.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Lewis_Capaldi_-_Divinely_Uninspired_to_a_Hellish_Extent.png/220px-Lewis_Capaldi_-_Divinely_Uninspired_to_a_Hellish_Extent.png'), filename: "someone_cover.jpg", content_type: "image/jpg")
someone_you_loved.save!
worship = Track.new(
  title: 'Worship',
  artist: 'Years & Years',
  album: 'Communion')
worship.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/7/7f/Years_%26_Years_-_Communion_%28cover%29.jpg'), filename: "worship_cover.jpg", content_type: "image/jpg")
worship.save!
lost_in_japan = Track.new(
  title: 'Lost In Japan',
  artist: 'Shawn Mendes',
  album: 'Shawn Mendes')
lost_in_japan.cover_photo.attach(io: open('https://data.whicdn.com/images/313082862/original.jpg?t=1527534006'), filename: "lost_in_cover.jpg", content_type: "image/jpg")
lost_in_japan.save!
no_goodbyes = Track.new(
  title: 'No Goodbyes',
  artist: 'Dua Lipa',
  album: 'Dua Lipa (Deluxe)')
no_goodbyes.cover_photo.attach(io: open('https://images-na.ssl-images-amazon.com/images/I/91IE9WvAHyL._AC_SL1500_.jpg'), filename: "goodbyes_cover.jpg", content_type: "image/jpg")
no_goodbyes.save!
the_wire = Track.new(
  title: 'The Wire',
  artist: 'HAIM',
  album: 'Days Are Gone')
the_wire.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Haim_-_Days_Are_Gone.png/220px-Haim_-_Days_Are_Gone.png'), filename: "wire_cover.jpg", content_type: "image/jpg")
the_wire.save!
islands = Track.new(
  title: 'Islands',
  artist: 'The xx',
  album: 'xx')
islands.cover_photo.attach(io: open('https://static.stereogum.com/blogs.dir/2/files/2011/10/X-608x608.jpg'), filename: "islands_cover.jpg", content_type: "image/jpg")
islands.save!
high_hopes = Track.new(
  title: 'High Hopes',
  artist: 'Kodaline',
  album: 'In A Perfect World (Deluxe)')
high_hopes.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/4/42/Kodaline_-_In_A_Perfect_World.jpg'), filename: "high_hopes_cover.jpg", content_type: "image/jpg")
high_hopes.save!
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
fomo_friday = Event.new(
  name: 'Fomo Friday',
  theme: 'Pop',
  venue_id: pryzm.id,
  user_id: shirley.id,
  start_date_time: start_date_time,
  end_date_time: end_date_time)
fomo_friday.event_image.attach(io: open('https://images.unsplash.com/photo-1574391884720-bbc3740c59d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'), filename: "fomo_friday_image.jpg", content_type: "image/jpg")
fomo_friday.save!
puts 'Events created!'
just_juice = Event.new(
  name: 'Just Juice',
  theme: 'Pop',
  venue_id: queen_of_hoxton.id,
  user_id: shirley.id,
  start_date_time: start_date_time,
  end_date_time: end_date_time)
just_juice.event_image.attach(io: open('https://images.unsplash.com/photo-1565034400361-c05ee5e2cbb3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'), filename: "just_juice_image.jpg", content_type: "image/jpg")
just_juice.save!
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
