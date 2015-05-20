# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 Agency.create(name: "1-TorretaUPS", phone: "0212-1111111", address: "poste 1")
 Agency.create(name: "2-Carlos PS", phone: "0212-2222222", address: "poste 2")
 Agency.create(name: "3-MarvinMRW", phone: "0212-3333333", address: "poste 3")
 Agency.create(name: "4-LorenaUPS", phone: "0212-4444444", address: "poste 4")
 Agency.create(name: "5-Guiseppe MRW", phone: "0212-5555555", address: "poste 5")

  Rate.create(creator_id: 1, constant: 11.2, value_bs: 40.2)

Package.create( sender_id: 1, receiver_id: 2, sender_agency_id: 1, receiver_agency_id: 1, status: "Packing", dispatched_at: "2014-09-26 00:00:00", delivered_at: "2014-09-26 00:00:00", lenght: 11.4, width: 100, height: 45, weight: 30 ) 

Package.create(sender_id: 2, receiver_id: 2, sender_agency_id: 2, receiver_agency_id: 1, status: "Packing", dispatched_at: "2014-09-26 00:00:00", delivered_at: "2014-09-25 00:00:00", lenght: 12.4, width: 75, height:25.6, weight:41)

Package.create(sender_id: 1, receiver_id: 1, sender_agency_id: 2, receiver_agency_id: 2, status: "Transit", dispatched_at: "2014-09-26 00:00:00", delivered_at: "2014-09-27 00:00:00", lenght: 4.5, width:7.6, height:9.4, weight:11.5)

Package.create(sender_id: 1, receiver_id: 2, sender_agency_id: 1, receiver_agency_id: 2, status: "Dispatched", dispatched_at: "2014-09-17 02:20:00", delivered_at: "2014-09-27 02:20:00", lenght: 20, height:20, weight:10)

Package.create(sender_id: 1, receiver_id: 1, sender_agency_id: 2, receiver_agency_id: 2, status: "Delivered", dispatched_at: "2014-09-27 02:23:00", delivered_at: "2014-09-27 02:23:00", lenght: 7, width: 8, height:9, weight: 10)

User.create( email: "dead_or_luis@hotmail.com", encrypted_password: "$2a$10$ZrZ7PmxDyEYVDMoTwXGh4OjGb3uphaC.iZO0ltsmdDD...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 10, current_sign_in_at: "2014-09-28 23:43:56", last_sign_in_at: "2014-09-28 22:28:34", current_sign_in_ip: "190.72.142.27", last_sign_in_ip: "190.72.142.27")
 

User.create( email: "mail@gmail.com", encrypted_password: "$2a$10$ZrZ7PmxDyEYVDMoTwXGh4OjGb3uphaC.iZO0ltsmdDD...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 10, current_sign_in_at: "2014-09-28 23:43:56", last_sign_in_at: "2014-09-28 22:28:34", current_sign_in_ip: "190.72.142.27", last_sign_in_ip: "190.72.142.27")
    
User.create(email: "dead_or_luis@hotmail.com2", encrypted_password: "$2a$10$1/iooQNZYlH/gN1BMLytPe7QKLAxA5Y3uwx0vYu/ZHt...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2014-09-27 20:59:30", last_sign_in_at: "2014-09-27 19:54:11", current_sign_in_ip: "190.72.142.2
7", last_sign_in_ip: "190.72.142.27")

User.create( email: "torreta@gmail.com", encrypted_password: "$2a$10$eFXWyRtGuy0RWTOI1osfxeXRDa9MgmgRRTB1.utAUEh...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2014-09-27 21:15:04", last_sign_in_at: "2014-09-27 21:12:45", current_sign_in_ip: "190.72.142.27", last_sign_in_ip: "190.72.142.27")

Profile.create(role: "Admin", cedula: "18033084", name: "Luis", lastname: "Campos", phone: "0412-0107979", address: "casa natalia", agency_id: 4, user_id: 1)
Profile.create(role: "Admin", cedula: "18033084", name: "ese", lastname: "Campos", phone: "0412-0107978", address: "casa natalia", agency_id: 4, user_id: 2)
Profile.create( role: "Admin", cedula: "19154154", name: "Pablo", lastname: "Camejo", phone: "0212-5789797", address: "Casa Concordia", agency_id: 5, user_id: 2)
Profile.create( role: "Client", cedula: "17545852", name: "Richard", lastname: "Perea", phone: "0212-8784452", address: "Casa noriega", agency_id: 1, user_id: 3)

