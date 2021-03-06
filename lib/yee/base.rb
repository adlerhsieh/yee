require 'thor'

module Yee
class Base < Thor
  default_task :output
  desc "", "outputting yee image and play music"
  def output
    puts "
░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░▄███▄▄▄░░░░░░
░░░░░░░░░▄▄▄██▀▀▀▀███▄░░░░
░░░░░░░▄▀▀░░░░░░░░░░░▀█░░░
░░░░▄▄▀░░░░░░░░░░░░░░░▀█░░       ░     ░  ░░░░░  ░░░░░░
░░░█░░░░░▀▄░░▄▀░░░░░░░░█░░        ░   ░   ░      ░
░░░▐██▄░░▀▄▀▀▄▀░░▄██▀░▐▌░░          ░     ░░░░   ░░░░░
░░░█▀█░▀░░░▀▀░░░▀░█▀░░▐▌░░         ░      ░      ░
░░░█░░▀▐░░░░░░░░▌▀░░░░░█░░        ░       ░░░░░  ░░░░░░
░░░█░░░░░░░░░░░░░░░░░░░█░░
░░░░█░░▀▄░░░░▄▀░░░░░░░░█░░
░░░░█░░░░░░░░░░░▄▄░░░░█░░░
░░░░░█▀██▀▀▀▀██▀░░░░░░█░░░
░░░░░█░░▀████▀░░░░░░░█░░░░
░░░░░░█░░░░░░░░░░░░▄█░░░░░
░░░░░░░██░░░░░█▄▄▀▀░█░░░░░
░░░░░░░░▀▀█▀▀▀▀░░░░░░█░░░░
░░░░░░░░░█░░░░░░░░░░░░█░░░
      "
    `afplay #{mp3}`
  end

  map %w[--version -v] => :__print_version
  desc "--version, -v", "show version"
  def __print_version
    puts Yee::VERSION
  end

  private

    def mp3
      File.expand_path('../../../data/yee.mp3', __FILE__)
    end
  end
end
