3.times do |number|
  Message.create(content: "#{number}番目のメッセージです!", user_id: User.first.id)
end