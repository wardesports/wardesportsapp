
User.create(username:"cindyk09", first_name:"Cindy", last_name:"Kim", description:"I am a person", organization_name:"meowleague", address1:"230 flatbush", city:"brooklyn", state:"NY",postalcode: "11217", admin:true, organizer:true, email: "cindyk09@gmail.com", password:"qwerty", password_confirmation:"qwerty")
User.create(username:"cindyk09", first_name:"Cindy", last_name:"Kim", description:"I am a person", organization_name:"meowleague", address1:"4018", city:"flushing", state:"NY",postalcode: "11354", admin:true, organizer:true, email: "lala@gmail.com", password:"qwerty", password_confirmation:"qwerty")
Event.create(name: "Meow", description:"nothing", start: DateTime.now, end: DateTime.now+2.hours, address1: "230 flatbush ave", city: "brooklyn", state: "NY", postalcode: "11217", organizer_id:1)
Event.create(name: "Woof", description:"I am dog", start: DateTime.now, end: DateTime.now+2.hours, address1: "250 flatbush ave", city: "brooklyn", state: "NY", postalcode: "11217", organizer_id:1)
Event.create(name: "Hello", description:"I am a person", start: DateTime.now, end: DateTime.now+2.hours, address1: "4016", city: "Flushing", state: "NY", postalcode: "11354", organizer_id:1)
