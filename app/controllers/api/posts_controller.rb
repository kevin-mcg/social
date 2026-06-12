module Api
    class PostsController < ApplicationController
        respond_to? :json

        def index
            @posts = Post.all
            respond_to do |format|
                format.json { render :json => @posts }
            end
        end
    end
end