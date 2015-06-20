# coding: utf-8

require 'thor'

module DayMatchGem
  class CLI < Thor
        desc 'hoge', 'puts Hoge'
  	def get 
		system("gem list > gem_list.txt")
		gem_array = []
		File.open('gem_list.txt') do |file|
			file.each_line do |line|
				gem_array.push(line)
			end
		end
		puts gem_array.sample
	end  
  end
end
