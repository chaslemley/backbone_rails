# backbone_rails

backbone_rails does two things: 

1. Tells active record to exclude the root element from the to_json response. 
2. Adds a class method to ActionController::Base to initialize the backbone.js integration to prepare the params passed from backbone for consumption by rails.

## Installation
  
Just add backbone_rails to your Gemfile

    gem "backbone_rails"
  
## Use

### In your application.js

Create a backbone Model and Collection with the correct corresponding url:

    $(function(){
      Movie = Backbone.Model;

      var Movies = Backbone.Collection.extend({
        model: Movie,
        url: '/movies'
      });
    });

### In your rails app

In your layout (application.html.haml) include the backbone js and all associated dependencies.

####In your layout:

    <%= javascript_include_tag "jquery", "json2", "underscore", "backbone", "application" %>

In your controller add a call to backbone_controller_for and pass it the name of your model. Use respond_with to ensure sure your controller actions respond correctly to the json requests.

####In your controller:

    class MoviesController < ApplicationController
      backbone_controller_for :movie
  
      def index
        @movies = Movie.all
        respond_with @movies
      end

      def show
        @movie = Movie.find(params[:id])
        respond_with @movie
      end

      def create
        @movie = Movie.new(params[:movie])
    
        if @movie.save
          respond_with @movie, :status => :created, :location => @movie
        else
          respond_with @movie, :status => :unprocessable_entity
        end
      end


      def update
        @movie = Movie.find(params[:id])

        if @movie.update_attributes(params[:movie])
          head :ok
        else
          respond_with @movie, :status => :unprocessable_entity
        end
      end

      def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy

        head :ok
      end
    end

## Contributing to backbone_rails
 
*  Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
*  Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
*  Fork the project
*  Start a feature/bugfix branch
*  Commit and push until you are happy with your contribution
*  Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
*  Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2010 Chas Lemley. See LICENSE.txt for further details.