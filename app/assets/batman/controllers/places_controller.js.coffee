class Forage.PlacesController extends Forage.ApplicationController
  routingKey: 'places'

  index: (params) ->
    @set('places', Forage.Place.get('all'))

  show: (params) ->
    @set 'place', Forage.Place.find params.id, ->

  edit: (params) ->
    @set 'place', Forage.Place.find params.id, ->

  new: (params) ->
    @set('place', new Forage.Place)

  create: (params) ->
    place = @get('place')
    place.save ->
      Batman.redirect(place)

  update: (params) ->
    place = @get('place')
    place.save ->
      Batman.redirect(place)

  destroy: (params) ->

  @accessor 'noPlaces', ->
    @get('places.length') == 0