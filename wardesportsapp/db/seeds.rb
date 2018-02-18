
# User.destroy_all
# Group.destroy_all
# HostGroup.destroy_all
# MemberGroup.destroy_all
# Event.destroy_all
# Game.destroy_all
# EventGame.destroy_all

user_1 = User.create(username:"cindyk09", first_name:"Cindy", last_name:"Kim", description:"I am a person", address1:"230 flatbush", city:"brooklyn", state:"NY",postalcode: "11217", email: "cindyk09@gmail.com", password:"qwerty", password_confirmation:"qwerty")
user_2 = User.create(username:"Your Boi", first_name:"Cindy", last_name:"Kim", description:"I am a person", address1:"4018", city:"flushing", state:"NY",postalcode: "11354", email: "lala@gmail.com", password:"qwerty", password_confirmation:"qwerty")

group_1 = Group.create!(name:"Kelly Kelzz group of pain", description:"ouchie magouchie lil bro")
group_2 = Group.create!(name:"Wangtron", description:"working")

HostGroup.create!(host: user_1, group: group_1)
HostGroup.create!(host: user_2, group: group_2)

MemberGroup.create!(member: user_2, group: group_1)
MemberGroup.create!(member: user_1, group: group_2)


event_1 = Event.create(name: "Meow", description:"nothing", start: DateTime.now, end: DateTime.now+2.hours, address1: "230 flatbush ave", city: "brooklyn", state: "NY", postalcode: "11217", group_id:2)
event_2 = Event.create(name: "Woof", description:"I am dog", start: DateTime.now, end: DateTime.now+2.hours, address1: "250 flatbush ave", city: "brooklyn", state: "NY", postalcode: "11217", group_id:1)
event_3 = Event.create(name: "Hello", description:"I am a person", start: DateTime.now, end: DateTime.now+2.hours, address1: "4016", city: "Flushing", state: "NY", postalcode: "11354", group_id:1)


game_1 = Game.create!(name:"LOL",description: "something", category:"1", version:"beta")
game_2 = Game.create!(name:"CS",description: "something", category:"1", version:"beta")

EventGame.create!(event: event_1, game: game_1)
EventGame.create!(event: event_1, game: game_2)


User.create(username:"cindyk09", first_name:"Cindy", last_name:"Kim", description:"I am a person", organization_name:"meowleague", address1:"230 flatbush", city:"brooklyn", state:"NY",postalcode: "11217", admin:true, organizer:true, email: "cindyk09@gmail.com", password:"qwerty", password_confirmation:"qwerty")
User.create(username:"cindyk09", first_name:"Cindy", last_name:"Kim", description:"I am a person", organization_name:"meowleague", address1:"4018", city:"flushing", state:"NY",postalcode: "11354", admin:true, organizer:true, email: "lala@gmail.com", password:"qwerty", password_confirmation:"qwerty")
Event.create(name: "Meow", description:"nothing", start: DateTime.now, end: DateTime.now+2.hours, address1: "230 flatbush ave", city: "brooklyn", state: "NY", postalcode: "11217", organizer_id:1)
Event.create(name: "Woof", description:"I am dog", start: DateTime.now, end: DateTime.now+2.hours, address1: "250 flatbush ave", city: "brooklyn", state: "NY", postalcode: "11217", organizer_id:1)
Event.create(name: "Hello", description:"I am a person", start: DateTime.now, end: DateTime.now+2.hours, address1: "4016", city: "Flushing", state: "NY", postalcode: "11354", organizer_id:1)


