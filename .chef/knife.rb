# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "goanpao"
client_key               "#{current_dir}/goanpao.pem"
validation_client_name   "agma-validator"
validation_key           "#{current_dir}/agma-validator.pem"
chef_server_url          "https://api.chef.io/organizations/agma"
cookbook_path            ["#{current_dir}/../cookbooks"]
