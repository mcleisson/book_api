class AuthorController < ApplicationController

    def index
        @author = Author.all
        render json: @author
    end

    def show
        @author = Author.find(params[:id])
        render json: @author
    end
    
    def create
        @author = Author.new(params[:author])
        if @author.save
          flash[:success] = "Object successfully created"
          render json: @author
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def update
        @author = Author.find(params[:id])
        if @author.update_attributes(params[:author])
          flash[:success] = "Object was successfully updated"
          render json: @author
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def destroy
        @author = Author.find(params[:id])
        if @author.destroy
            flash[:success] = 'Object was successfully deleted.'
            render json: @author
        else
            flash[:error] = 'Something went wrong'
            redirect_to authors_url
        end
    end
    
    private


    
    

end
