# coding: utf-8

require 'thor'

module DayMatchGem
  class CLI < Thor
        desc 'hoge', 'puts Hoge'
  	def get 
		gem_array = `gem list`.scan(/^\w+/)
		puts gem_array[(Time.now.to_i / (24*60*60)) % gem_array.length]
	end  
  end
end
