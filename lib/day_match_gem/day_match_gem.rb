# coding: utf-8

require 'thor'

module DayMatchGem
  class CLI < Thor
        desc 'hoge', 'puts Hoge'
  	def get 
		puts `gem list`.scan(/^\w+/).sample
	end  
  end
end
