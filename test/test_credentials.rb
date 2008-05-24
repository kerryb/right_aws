class TestCredentials
  class << self
    attr_accessor :aws_access_key_id, :aws_secret_access_key, :account_number

    def get_credentials
      Dir.chdir do
        begin
          Dir.chdir('./.rightscale') do 
            require 'testcredentials'
          end
        rescue Exception => e
          puts "Couldn't chdir to ~/.rightscale: #{e.message}"
        end
      end
    end
  end
end
