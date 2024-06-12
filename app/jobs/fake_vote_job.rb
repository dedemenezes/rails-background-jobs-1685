class FakeVoteJob < ApplicationJob
  queue_as :default
  # *args -> allows you to pass as many arguemnts you want

  def perform(user)
    # Do something later
    puts "Counting vote to #{user.email}"
    sleep 2 # simulate that we are voting
    puts 'Vote counted!'
  end
end
