action :install do
  execute "enable rabbitmq plugin" do
    command "sudo rabbitmq-plugins enable #{new_resource}"
  end 
end
