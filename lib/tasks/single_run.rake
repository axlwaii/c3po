namespace :single_run do
  
  desc "2014-2-1: Create default admin"
  task create_admin: :environment do
    
    STDOUT.puts "Enter an email: (default: three@pio.com)"
    email_input = STDIN.gets.strip
    STDOUT.puts "Enter a password (min. 8 characters): (default: 12345678)"
    password_input = STDIN.gets.strip

    email    = email_input == '' ? 'three@pio.com' : password_input
    password = password_input == '' ? 12345678 : password_input

    User.create!({:email => email, :password => password, :password_confirmation => password }) 
    puts "created admin: #{User.last.email} with password: #{password}"

  end

end
