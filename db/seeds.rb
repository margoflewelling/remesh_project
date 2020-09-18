# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conversation.destroy_all
Message.destroy_all
Thought.destroy_all

# Conversations
dogs = Conversation.create( title: "All About Dogs",
                            start_date: Date.today
                          )
icecream = Conversation.create( title: "IceCream",
                                start_date: Date.today
                              )
climbing = Conversation.create( title: "Climbing",
                                start_date: Date.today
                              )

# messages
message1 = dogs.messages.create( text: "Good off-leash dog areas in Denver?")
message2 = dogs.messages.create( text: "Puppies and Dew Claws")
message3 = icecream.messages.create( text: "What is most important when choosing
                              an icecream at the grocery store?")
message4 = climbing.messages.create( text: "Gym climbing during Covid19")

# Thoughts
message1.thoughts.create( text: "Westminster dog park is great, huge area
      with water but not much shade")
message1.thoughts.create( text: "I take my dog to Chatfield almost every day,
      all the dogs and owners are friendly")
message2.thoughts.create( text: "If they are gangly and in the way then I think
      it's best to be safe and get them removed. Otherwise you risk them being
      torn off in a bloody mess. ")
message3.thoughts.create( text: "All about marketing, I choose based on the
      image on the carton")
message4.thoughts.create( text: "No chalk signs posted everywhere! Please follow
      the rules and only use liquid chalk")
message4.thoughts.create( text: "I see far too many people pulling their masks
  down at the gym, I know you're pumped but I don't want Covid")
