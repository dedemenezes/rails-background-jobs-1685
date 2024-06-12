namespace :user do
  desc "Update user account with ClearBit API"
  task update_all: :environment do
    puts "Updating users with our JOB"
    User.all.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end

  desc "Removing users"
  task destroy_all: :environment do
    puts "Destroying users with our JOB"
  end

end
