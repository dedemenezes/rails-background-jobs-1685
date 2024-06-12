class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "Getting new information from Clearbit API"
    sleep 2
    puts 'Done zo/'
  end
end
