User.create!([
  {email: "jason@email.com", encrypted_password: "$2a$11$UouB/b5hC1kv75WWTu/I1Od1sMyTWDq1InkG3/wKdPcx2GGb8XMVq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 13, current_sign_in_at: "2016-06-23 01:11:03", last_sign_in_at: "2016-06-23 01:05:48", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Category.create!([
  {name: "Sports"},
  {name: "Science and Technology"},
  {name: "Politics"},
  {name: "Education"},
  {name: "Entertainment"}
])
Choice.create!([
  {content: "Thomas Edison", question_id: 1, correct: "false"},
  {content: "Lewis Latimer", question_id: 1, correct: "true"},
  {content: "Benjamin Franklin", question_id: 1, correct: "false"},
  {content: "Albert Einstein", question_id: 1, correct: "false"},
  {content: "Jean Baptiste Point du Sable", question_id: 2, correct: "true"},
  {content: "Sacajawea", question_id: 2, correct: "false"},
  {content: "Mark Chicagoo Williams", question_id: 2, correct: "false"},
  {content: "Lewis and Clark", question_id: 2, correct: "false"},
  {content: "Benjamin Banneker", question_id: 3, correct: "true"},
  {content: "Rolex Dumont", question_id: 3, correct: "false"},
  {content: "Alexander Fossil", question_id: 3, correct: "false"},
  {content: "Peter Van Halsburg", question_id: 3, correct: "false"},
  {content: "George Washington Carver", question_id: 4, correct: "true"},
  {content: "George Washington", question_id: 4, correct: "false"},
  {content: "Mr. Peanut", question_id: 4, correct: "false"},
  {content: "James M. Planter", question_id: 4, correct: "false"},
  {content: "Andrew Jackson III", question_id: 5, correct: "false"},
  {content: "Lonnie Johnson", question_id: 5, correct: "true"},
  {content: "Bill Gates", question_id: 5, correct: "false"},
  {content: "Timothy Cook", question_id: 5, correct: "false"},
  {content: "Carl Lewis", question_id: 6, correct: "false"},
  {content: "Usain Bolt", question_id: 6, correct: "true"},
  {content: "Justin Gatlin", question_id: 6, correct: "false"},
  {content: "The Flash", question_id: 6, correct: "false"},
  {content: "Michael Jordan", question_id: 7, correct: "false"},
  {content: "Larry Bird", question_id: 7, correct: "false"},
  {content: "Bill Russell", question_id: 7, correct: "true"},
  {content: "Wilt Chamberlain", question_id: 7, correct: "false"},
  {content: "Florence Griffith Joyner", question_id: 8, correct: "true"},
  {content: "Jackie Joyner Kersey", question_id: 8, correct: "false"},
  {content: "Serena Williams", question_id: 8, correct: "false"},
  {content: "Cheetara", question_id: 8, correct: "false"},
  {content: "Tom Brady", question_id: 9, correct: "false"},
  {content: "Jim Brown", question_id: 9, correct: "true"},
  {content: "Brett Favre", question_id: 9, correct: "false"},
  {content: "Joe Montana", question_id: 9, correct: "false"},
  {content: "Walter Payton", question_id: 10, correct: "false"},
  {content: "Barry Sanders", question_id: 10, correct: "false"},
  {content: "Erik Dickerson", question_id: 10, correct: "false"},
  {content: "Emmitt Smith", question_id: 10, correct: "true"}
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
