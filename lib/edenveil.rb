require "edenveil/version"
require 'yaml'

module Edenveil

  @config = {
    :log_level => "verbose",
    :user_cookie => "login=%26id%3D2243662%26pw%3D4e79b4f0028ca81dcabc12f076c7f3c628f7d5f2%26cks%3Db405121765f6"
    :min_connections => 1,
    :max_connections => 5,
    :unrar => true,
    :download_folder => "~/Downloads",
    :password_file => "~/.unrar_passwords.txt",
    :delete_extraced_archives => false,
    :media_cleaner => true
  }

  @valid_config_keys = @config.keys

  # Configure through hash
  def self.configure(opts = {})
    opts.each {|k,v| @config[k.to_sym] = v if @valid_config_keys.include? k.to_sym}
  end

  # Configure through yaml file
  def self.configure_with(path_to_yaml_file)
    begin
      config = YAML::load(IO.read(path_to_yaml_file))
    rescue Errno::ENOENT
      log(:warning, "YAML configuration file couldn't be found. Using defaults."); return
    rescue Psych::SyntaxError
      log(:warning, "YAML configuration file contains invalid syntax. Using defaults."); return
    end

    configure(config)
  end

  def self.config
    @config
  end


  class Chatter
    def say_hello
      puts 'This is zerp. Coming in loud and clear. Over.'
    end
  end

end
