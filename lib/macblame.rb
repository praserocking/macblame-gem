require "macblame/version"

module Macblame
	class Main
		def run_app
			if ARGV.length == 0
				print_general_message
			else
				ARGV.each do |name|
					macblame(name)
				end
			end
		end

		private
	  	def macblame(file_name)
			contributor = {}
			output = open("| git blame "+file_name)
			feed = output.read()
			lines = feed.split("\n")
			loc = lines.length
			lines.each do |line|
				tokens = line.split("(")
				name = tokens[1].split(" ")[0]
				if contributor[name].nil?
					contributor[name] = 1
				else
					contributor[name] += 1
				end
			end
			sorted_hash = contributor.sort.sort do |a,b|
				b[1] <=> a[1]
			end
			print "for file #{file_name}.. \n"
			sorted_hash.each do |i|
				if i[0] == "Not"
					print_info("not yet committed",i[1],loc)
				else
					print_info(i[0],i[1],loc)
				end
			end
			puts "* "*25
		end
		
		private
		def print_info(name,loc,commits)
			puts "Contributor: \033[1;32m#{name}\033[0m with \033[1;32m#{((loc.to_f/commits.to_f)*100).round(2)} %\033[0m contribution with \033[1;32m#{loc}\033[0m lines of code"
		end

		private
		def print_general_message
			print "macblame - A better alternative to 'git blame'\n\n"
			puts "Usage:"
			print "macblame <filename 1> <filename 2> ..... \n\n"
			puts "Description:"
			print "macblame shows stats about the files tracked by git. It uses the output of 'git blame' and summarize it in a cleaner and intuitive format."
			puts "\n\n Credits:"
			print "Prasanna Sundar  -  prassi  -  praserocking@gmail.com"
		end
	end
end
