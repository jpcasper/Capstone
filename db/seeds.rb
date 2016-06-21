User.create!([
  {email: "jason@email.com", encrypted_password: "$2a$11$UouB/b5hC1kv75WWTu/I1Od1sMyTWDq1InkG3/wKdPcx2GGb8XMVq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-06-19 18:03:35", last_sign_in_at: "2016-06-19 00:31:45", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Category.create!([
  {name: "Sports"},
  {name: "Science and Technology"},
  {name: "Politics"},
  {name: "Education"},
  {name: "Entertainment"}
])
Choice.create!([
  {content: "Thomas Edison", question_id: 1, correct: nil},
  {content: "Lewis Latimer", question_id: 1, correct: nil},
  {content: "Benjamin Franklin", question_id: 1, correct: nil},
  {content: "Albert Einstein", question_id: 1, correct: nil},
  {content: "Jean Baptiste Point du Sable", question_id: 2, correct: nil},
  {content: "Sacajawea", question_id: 2, correct: nil},
  {content: "Mark Chicagoo Williams", question_id: 2, correct: nil},
  {content: "Lewis and Clark", question_id: 2, correct: nil},
  {content: "Benjamin Banneker", question_id: 3, correct: nil},
  {content: "Rolex Dumont", question_id: 3, correct: nil},
  {content: "Alexander Fossil", question_id: 3, correct: nil},
  {content: "Peter Van Halsburg", question_id: 3, correct: nil},
  {content: "George Washington Carver", question_id: 4, correct: nil},
  {content: "George Washington", question_id: 4, correct: nil},
  {content: "Mr. Peanut", question_id: 4, correct: nil},
  {content: "James M. Planter", question_id: 4, correct: nil},
  {content: "Andrew Jackson III", question_id: 5, correct: nil},
  {content: "Lonnie Johnson", question_id: 5, correct: nil},
  {content: "Bill Gates", question_id: 5, correct: nil},
  {content: "Timothy Cook", question_id: 5, correct: nil},
  {content: "Carl Lewis", question_id: 6, correct: nil},
  {content: "Usain Bolt", question_id: 6, correct: nil},
  {content: "Justin Gatlin", question_id: 6, correct: nil},
  {content: "The Flash", question_id: 6, correct: nil},
  {content: "Michael Jordan", question_id: 7, correct: nil},
  {content: "Larry Bird", question_id: 7, correct: nil},
  {content: "Bill Russell", question_id: 7, correct: nil},
  {content: "Wilt Chamberlain", question_id: 7, correct: nil},
  {content: "Florence Griffith Joyner", question_id: 8, correct: nil},
  {content: "Jackie Joyner Kersey", question_id: 8, correct: nil},
  {content: "Serena Williams", question_id: 8, correct: nil},
  {content: "Cheetara", question_id: 8, correct: nil},
  {content: "Tom Brady", question_id: 9, correct: nil},
  {content: "Jim Brown", question_id: 9, correct: nil},
  {content: "Brett Favre", question_id: 9, correct: nil},
  {content: "Joe Montana", question_id: 9, correct: nil},
  {content: "Walter Payton", question_id: 10, correct: nil},
  {content: "Barry Sanders", question_id: 10, correct: nil},
  {content: "Erik Dickerson", question_id: 10, correct: nil},
  {content: "Emmitt Smith", question_id: 10, correct: nil}
])
Question.create!([
  {content: "Who invented the carbon filament light bulb?", category_id: nil},
  {content: "Who founded the city of Chicago?", category_id: nil},
  {content: "Who invented America's first clock?", category_id: nil},
  {content: "Who discovered over 300 uses for the peanut?", category_id: nil},
  {content: "Who invented the super soaker water gun?", category_id: nil},
  {content: "Who is considered the fastest man alive", category_id: nil},
  {content: "Who has the most championship rings in NBA history?", category_id: nil},
  {content: "Who holds the women's record in the 100m dash?", category_id: nil},
  {content: "What athlete was an All-American football player as well as an All-American in lacrosse?", category_id: nil},
  {content: "Who holds the NFL all time rushing record?", category_id: nil}
])
