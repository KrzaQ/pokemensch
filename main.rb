require File.dirname(__FILE__)+'/pokemensch.rb'

config = 'config.rb'

ARGV.each do |a|
	opt = a.slice(0,3)
	config = a.sub(/.../,'') if opt == "-c="
end

eval(File.read(config))

bot = PokeMensch.new(ConfigData)

bot.start