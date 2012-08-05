# Set up a collection to contain player information. On the server,
# it is backed by a MongoDB collection named "players."


Players = new Meteor.Collection "players"

#reset scoreoard
resetTable = () ->
	Players.remove({})
	if Players.find().count() == 0
		names = [
			"Ada Lovelace",
			"Grace Hopper",
			"Marie Curie",
			"Carl Friedrich Gauss",
			"Nikola Tesla",
			"Gavin Payne"
			]
		Players.insert(name: item, score: Math.floor(Math.random()*10)*5) for item in names
	return

addScientist = (newPlayer) ->
	Players.insert(name: newPlayer, score: Math.floor(Math.random()*10)*5)
	return

	
if Meteor.is_client
	
	_.extend Template.navbar,
		events:
			'click .sort_by_name': ->
				Session.set("sortByName", true)
				return
			'click .sort_by_score': ->
				Session.set("sortByName", false)	
				return
			'click .reset_data': ->
				resetTable()
				return
				
	_.extend Template.leaderboard,
		players: ->
			#get all players for the leaderboard and sort

			sortListBy = (sortBy) ->
			#change the sort
				if sortBy is false
					return Players.find {}, sort: score:-1, name:1
				else 
					return Players.find {}, sort: name:1, score:-1

			sortListBy(Session.get("sortByName"))
			
		events:
			'click .add_user': ->
				newPlayer = $('#player_name')
				if newPlayer.val() #if it is not empty
					addScientist(newPlayer.val())
		
	_.extend Template.leaderboard.selected_name = ->
			#set the selected name
			player = Players.findOne(Session.get "selected_player")
			player && player.name
			
							
	_.extend Template.player,
		events:
			'click .increment': ->
				Players.update(@_id, $inc:score: 5)
				return
			'click .remove': ->
				Players.remove(@_id)
				return
			'click': ->
				Session.set("selected_player", @_id)
		
		#i have disabled this as tooltips are bad on mobile devices
		enable_tooltips: ->
    		# Update tooltips after the template has rendered.
			Meteor.defer -> $('[rel=tooltip]').tooltip()
			return

if Meteor.is_server
	Meteor.startup ->
		if Players.find().count() is 0
			resetTable()
		return

