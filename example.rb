#begin
#	require 'wowr'
#rescue LoadError
#	require 'rubygems'
#	require 'wowr'
#£end

require 'lib/wowr.rb'
require 'yaml'

api = Wowr::API.new(:character_name => 'Xetasi',
                    :guild_name => 'Clan Plaid',
                    :realm => 'Staghelm',
                    :locale => 'us', # defaults to US
                    :lang => 'en_en', # remove for locale default language
                    :caching => true) # defaults to true

# For all requests it's possible to specify the parameters similar to the
# api constructor. By default it'll use whatever is specified in the API.

# gets character with API default values
# default_char = api.get_character

# specify other character
# xelota = api.get_character("Xelota", :realm => "Staghelm", :lang => 'en_en', :caching => false)
# 
# # Character requests
# chars = api.search_characters(:search => 'Cake')
# 
# Guild requests
# guilds = api.search_guilds("Clan Plaid")

# 
# # error handling
# # begin
# #   no_guild = api.get_guild("moo", :realm => 'bar')
# # rescue Wowr::Exceptions::GuildNotFound => e
# #   puts "Guild not found!"
# # end
# 
# xelota.items.each do |item|
#   puts item.icon
# end
# 
# # Items
# items = api.search_items("Cake")
# item = api.get_item(33924)
# item.created_by.each do |recipe|
#   recipe.reagents.each do |reagent|
#     puts reagent
#   end
# end

# Arena Teams
# arena_teams = api.search_arena_teams("Lemon")
# arena_team = api.get_arena_team("Lemon", 2, :realm => "Darksorrow")



# Guild Bank
#cookie = api.login('myuser', 'mypass')
#api.get_guild_bank_contents(cookie)
#api.get_guild_bank_log(cookie)


# Dungeon Data
dungeons = api.get_dungeons()
dungeons.each do |key,dungeon|
  puts dungeon.name
end
puts "———"
dungeons["violethold"].bosses.each do |boss|
  puts boss
end
