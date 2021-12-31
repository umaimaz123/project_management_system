namespace :create_client do
  desc "create client data"
  task :task1_create_client => :environment do
    client = Client.new(first_name:"abibi", last_name:"alam", address:"a2 plaza lahore", email:"qwe@gmail.com", phone:12345, website:"http://abc@gmail.com", description:"i create web based applications")
    client.save
  end
end