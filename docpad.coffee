# Define the Configuration
docpadConfig = {
  # ...
  templateData:
    site:
      title: "My Website"
    getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
  collections:
    pages: ->
      @getCollection('html').findAllLive({isPage:true},{pageOrder: $exists: true}, {pageOrder:1}).on "add", (model) ->
        model.setMetaDefaults({layout:"page"})
    posts: ->
      @getCollection('html').findAllLive({relativeOutDirPath:'posts'},[date:1])
}

# Export the Configuration
module.exports = docpadConfig