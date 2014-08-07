Joke.create!([
  {joke: "Have you heard about the new movie \"Constipated\"??? It hasn't come out yet", user_id: 1, joke_id: nil, rating: nil}
])
Rating.create!([
  {username: nil, joke_id: "1", rating: 5, user_id: "1"}
])
User.create!([
  {username: "MASTERKEY", profilepicture: "http://media3.giphy.com/media/OTnDHCCFNZHwc/200.gif", description: "MODERATOR", rating: nil, password_digest: "$2a$10$CbykjsHrnJDGRwX2n5gkz.rLnK78ohPT4l5KBUqKNyoIKEANm5VOG"}
])
