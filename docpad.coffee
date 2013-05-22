# Define the Configuration
docpadConfig = {
  # ...
  templateData:
    site:
      title: "Austin Kettner"
      author: "Austin Kettner"

    #Setting Page Title
    getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title

  # Defining Collections
  collections:
    pages: ->
      @getCollection('html').findAllLive({isPage:true},{pageOrder: $exists: true}, {pageOrder:1}).on "add", (model) ->
        model.setMetaDefaults({layout:"page"})
    posts: ->
      @getCollection('html').findAllLive({relativeOutDirPath:'posts'},{date:-1})
    projects: ->
      @getCollection('html').findAllLive({relativeOutDirPath:/projects[\/\\]\w+/},{pageOrder:1})

  # Custom Plugin Settings
  plugins:
    sitemap:
      cachetime: 600000
      changefreq: 'weekly'
      priority: 0.5
    sass:
      compass: true
}

# Export the Configuration
module.exports = docpadConfig