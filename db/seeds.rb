# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
posts = Post.create([
	{ 
		#begnning of the array
		#beginning of the first hash
		:title => 'How to use active record', 
		:body => "I'm typing a sentence"
	},
	{# title beginning of the second hash

		:title => 'How to use teache', 
		:body => "I'm typing a dog"
	}
])
#   Mayor.create(name: 'Emanuel', city: cities.first)
