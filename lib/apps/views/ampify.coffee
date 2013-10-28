$ ->
  # _.templateSettings =
  #   evaluate:    /\{\{#([\s\S]+?)\}\}/g, # {{# console.log("blah") }}
  #   interpolate: /\{\{[^#\{]([\s\S]+?)[^\}]\}\}/g, # {{ title }}
  #   escape:      /\{\{\{([\s\S]+?)\}\}\}/g, # {{{ title }}}

  # Actual Mustache is defined.

  # Helper methods

  ##

  # ###
  # Models and Collections
  # ###
  Playlist = Backbone.Collection.extend
    url: '/playlist'
    model: Track

    nextTrack: (track) ->
      next = @at(@indexOf(track) + 1)
      if next
        return next
      else
        return @first()

    prevTrack: (track) ->
      prev = @at(@indexOf(track) - 1)
      if prev
        return prev
      else
        return @last()

 # --------------------------------------------------------------------


  # ###
  # Views
  # ###
  AppView = Backbone.View.extend
    el: $ '#playlists'

    initialize: ->
      console.log 'init'
  
  # ----------------------------------------------------------------

  # ###
  # Router
  # ###
  StutterRouter = Backbone.Router.extend
    routes:      
      "*actions": "defaultRoute"

  # ---------------------------------------------------------------------

  # KICK IT OFF!
  appView = new AppView
  router = new StutterRouter

  router.on 'route:defaultRoute', (actions) ->
    console.log 'welcome'

  Backbone.history.start()
