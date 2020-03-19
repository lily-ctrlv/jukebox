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
  email: 'james@clubbers.org',
  password: '123456',
  first_name: 'James',
  last_name: 'Trinder',
  display_name: 'jukebox_james',
  balance_cents: 1000,
  dj: false)
james.avatar.attach(io: open('https://avatars3.githubusercontent.com/u/39556334?s=460&v=4'), filename: "james_face.jpg", content_type: "image/jpg")
james.save!
eric = User.new(
  email: 'eric@discjockeys.org',
  password: '123456',
  first_name: 'Eric',
  last_name: 'Burger',
  display_name: 'jukebox_eric',
  balance_cents: 0,
  dj: true)
eric.avatar.attach(io: open('https://avatars2.githubusercontent.com/u/25728050?s=460&v=4'), filename: "eric_face.jpg", content_type: "image/jpg")
eric.save!
lili = User.new(
  email: 'lili@clubbers.org',
  password: '123456',
  first_name: 'Liliana',
  last_name: 'Martins Cosentino',
  display_name: 'jukebox_lili',
  balance_cents: 500,
  dj: false)
lili.avatar.attach(io: open('https://avatars2.githubusercontent.com/u/39335511?s=460&v=4'), filename: "lili_face.jpg", content_type: "image/jpg")
lili.save!
jamie = User.new(
  email: 'jamie@clubbers.org',
  password: '123456',
  first_name: 'Jamie',
  last_name: 'Newton',
  display_name: 'jukebox_jamie',
  balance_cents: 750,
  dj: false)
jamie.avatar.attach(io: open('https://avatars2.githubusercontent.com/u/33573418?s=460&v=4'), filename: "jamie_face.jpg", content_type: "image/jpg")
jamie.save!
shirley = User.new(
  email: 'shirley@discjockeys.org',
  password: '123456',
  first_name: 'Shirley',
  last_name: 'Whirley',
  display_name: 'dj_shirley',
  balance_cents: 0,
  dj: true)
shirley.avatar.attach(io: open('https://www.grammy.com/sites/com/files/styles/image_landscape_hero/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_16_9_1578384864.jpg?itok=EHqXQIe6'), filename: "tay_face.jpg", content_type: "image/jpg")
shirley.save!
gurpriya = User.new(
  email: 'gurpriya@clubbers.org',
  password: '123456',
  first_name: 'Gurpriya',
  last_name: 'Bhatia',
  display_name: 'jukebox_gurpriya',
  balance_cents: 800,
  dj: false)
gurpriya.avatar.attach(io: open('https://media-exp1.licdn.com/dms/image/C4D03AQFmgFtxngl_1A/profile-displayphoto-shrink_800_800/0?e=1590019200&v=beta&t=2zxgJHRcUt9abYQ9nGIpcowJYDWBIhyrTczM7yuC5_o'), filename: "gurpriya_face.jpg", content_type: "image/jpg")
gurpriya.save!
puts 'Users created!'


puts 'Creating tracks...'
juice = Track.new(
  title: 'Juice',
  artist: 'Lizzo',
  album: 'Cuz I Love You')
juice.cover_photo.attach(io: open("https://upload.wikimedia.org/wikipedia/en/thumb/d/dd/Lizzo_-_Cuz_I_Love_You.png/220px-Lizzo_-_Cuz_I_Love_You.png"), filename: "juice_cover.jpg", content_type: "image/jpg")
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
i_like_it = Track.new(
  title: 'I Like It',
  artist: 'Cardi B (ft. Bad Bunny & J Balvin)',
  album: 'Invastion of Privacy')
i_like_it.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/thumb/8/82/Cardi_B%2C_Bad_Bunny_and_J_Balvin_-_I_Like_It_%28Single_Cover%29.png/220px-Cardi_B%2C_Bad_Bunny_and_J_Balvin_-_I_Like_It_%28Single_Cover%29.png'), filename: "i_like_it_cover.jpg", content_type: "image/jpg")
i_like_it.save!
say_so = Track.new(
  title: 'Say So',
  artist: 'Doja Cat',
  album: 'Hot Pink')
say_so.cover_photo.attach(io: open('https://ichef.bbci.co.uk/images/ic/896xn/p082lysn.jpg'), filename: "say_so_cover.jpg", content_type: "image/jpg")
say_so.save!
intentions = Track.new(
  title: 'Intentions',
  artist: 'Justin Bieber (ft. Quavo)',
  album: 'Intentions')
intentions.cover_photo.attach(io: open('https://ichef.bbci.co.uk/images/ic/896xn/p083c7hp.jpg'), filename: "intentions_cover.jpg", content_type: "image/jpg")
intentions.save!
lonely = Track.new(
  title: 'Lonely',
  artist: 'Joel Corry',
  album: 'Lonely (Basement Mix)')
lonely.cover_photo.attach(io: open('https://ichef.bbci.co.uk/images/ic/896xn/p082lxwz.jpg'), filename: "lonely_cover.jpg", content_type: "image/jpg")
lonely.save!
my_oh_my = Track.new(
  title: 'My Oh My',
  artist: 'Camila Cabello (feat. DaBaby)',
  album: 'Romance')
my_oh_my.cover_photo.attach(io: open('https://ichef.bbci.co.uk/images/ic/896xn/p07zg4zy.jpg'), filename: "my_oh_my_cover.jpg", content_type: "image/jpg")
my_oh_my.save!
crazy_in_love = Track.new(
  title: 'Crazy in Love',
  artist: 'Beyoncé (feat. Jay-Z)',
  album: 'Dangerously in Love')
crazy_in_love.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Beyonce_-_Crazy_in_Love_%28single%29.png/220px-Beyonce_-_Crazy_in_Love_%28single%29.png'), filename: "crazy_in_love_cover.jpg", content_type: "image/jpg")
crazy_in_love.save!
all_about_that_bass = Track.new(
  title: 'All About that Bass',
  artist: 'Meghan Trainor',
  album: 'Title')
all_about_that_bass.cover_photo.attach(io: open('https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Meghan_Trainor_-_All_About_That_Bass_%28Official_Single_Cover%29.png/220px-Meghan_Trainor_-_All_About_That_Bass_%28Official_Single_Cover%29.png'), filename: "crazy_in_love_cover.jpg", content_type: "image/jpg")
all_about_that_bass.save!

puts 'Tracks created!'

puts 'Creating venues...'
pryzm = Venue.create!(
  name: 'Pryzm - Kingston',
  postcode: 'KT1 1QP')
queen_of_hoxton = Venue.create!(
  name: 'Queen of Hoxton',
  postcode: 'EC2A 3JX')
tiger_tiger = Venue.create!(
  name: 'Tiger Tiger',
  postcode: 'SW1Y 4SP')
heaven = Venue.create!(
  name: 'Heaven',
  postcode: 'WC2N 6NG')
xoyo = Venue.create!(
  name: 'XOYO',
  postcode: 'EC2A 4AP')
puts 'Venues created!'


date_time = Time.new
start_date_time = Time.new(date_time.year, date_time.month, date_time.day, date_time.hour, 0, 0)
end_date_time = Time.new(date_time.year, date_time.month, date_time.day + 1, 3, 0, 0)

puts 'Creating events...'
fomo_friday = Event.new(
  name: 'Fomo Friday',
  theme: 'Pop',
  venue_id: pryzm.id,
  user_id: eric.id,
  start_date_time: Time.new(2020, 03, 21, 15, 00, 00, "+02:00"),
  end_date_time: Time.new(2020, 03, 21, 23, 00, 00, "+02:00"))
fomo_friday.event_image.attach(io: open('https://images.unsplash.com/photo-1574391884720-bbc3740c59d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'), filename: "fomo_friday_image.jpg", content_type: "image/jpg")
fomo_friday.save!
puts 'Events created!'
just_juice = Event.new(
  name: 'Just Juice',
  theme: 'Pop',
  venue_id: queen_of_hoxton.id,
  user_id: eric.id,
  start_date_time: Time.new(2020, 03, 20, 20, 00, 00, "+02:00"),
  end_date_time: Time.new(2020, 03, 20, 23, 00, 00, "+02:00"))
just_juice.event_image.attach(io: open('https://images.unsplash.com/photo-1565034400361-c05ee5e2cbb3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'), filename: "just_juice_image.jpg", content_type: "image/jpg")
just_juice.save!
pleasurehood = Event.new(
  name: 'Pleasurehood',
  theme: 'Party',
  venue_id: xoyo.id,
  user_id: eric.id,
  start_date_time: Time.new(2020, 03, 19, 21, 30, 00, "+02:00"),
  end_date_time: Time.new(2020, 03, 19, 23, 00, 00, "+02:00"))
pleasurehood.event_image.attach(io: open('https://hirespace.imgix.net/spaces/7043/ncuakz3tswo.jpg?h=1080&w=1920&auto=format&fit=crop&q=40'), filename: "pleasurehood_image.jpg", content_type: "image/jpg")
pleasurehood.save!
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
say_so_event_track = EventTrack.create!(
  track_id: say_so.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 4)
lonely_event_track = EventTrack.create!(
  track_id: lonely.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 5)
crazy_in_love_event_track = EventTrack.create!(
  track_id: crazy_in_love.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 6)
all_about_that_bass_event_track = EventTrack.create!(
  track_id: all_about_that_bass.id,
  event_id: fomo_friday.id,
  total_bid_amount: 0,
  rank: 7)
puts 'Created event tracks!'

puts 'Creating bids...'
Bid.create!(
  amount_cents: 150,
  event_track_id: juice_event_track.id,
  user_id: james.id
  )
Bid.create!(
  amount_cents: 50,
  event_track_id: worship_event_track.id,
  user_id: jamie.id
  )
Bid.create!(
  amount_cents: 250,
  event_track_id: shake_it_off_event_track.id,
  user_id: james.id
  )
Bid.create!(
  amount_cents: 50,
  event_track_id: juice_event_track.id,
  user_id: gurpriya.id
  )
Bid.create!(
  amount_cents: 100,
  event_track_id: juice_event_track.id,
  user_id: lili.id
  )
Bid.create!(
  amount_cents: 200,
  event_track_id: shake_it_off_event_track.id,
  user_id: jamie.id
  )
Bid.create!(
  amount_cents: 100,
  event_track_id: say_so_event_track.id,
  user_id: lili.id
  )
Bid.create!(
  amount_cents: 50,
  event_track_id: lonely_event_track.id,
  user_id: james.id
  )
Bid.create!(
  amount_cents: 50,
  event_track_id: crazy_in_love_event_track.id,
  user_id: gurpriya.id
  )
Bid.create!(
  amount_cents: 50,
  event_track_id: all_about_that_bass_event_track.id,
  user_id: gurpriya.id
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

say_so_bids = Bid.where(event_track_id: say_so_event_track.id)
total_say_so_bids = say_so_bids.sum { |b| b.amount }
say_so_event_track.update!(total_bid_amount: total_say_so_bids)

lonely_bids = Bid.where(event_track_id: lonely_event_track.id)
total_lonely_bids = lonely_bids.sum { |b| b.amount }
lonely_event_track.update!(total_bid_amount: total_lonely_bids)

crazy_in_love_bids = Bid.where(event_track_id: crazy_in_love_event_track.id)
total_crazy_in_love_bids = crazy_in_love_bids.sum { |b| b.amount }
crazy_in_love_event_track.update!(total_bid_amount: total_crazy_in_love_bids)

all_about_that_bass_bids = Bid.where(event_track_id: all_about_that_bass_event_track.id)
total_all_about_that_bass_bids = all_about_that_bass_bids.sum { |b| b.amount }
all_about_that_bass_event_track.update!(total_bid_amount: total_all_about_that_bass_bids)

puts 'Total bids tallied!'
