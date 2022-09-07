class BookController < ApplicationController

    def index
        @book = Book.all

        render json: @author
    end

    def show
        @book = Book.find(params[:id])
        render json: @author
    end
    
    def create
        @book = Book.new(params[:book])
        if @book.save
          flash[:success] = "Object successfully created"
          render json: @book
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def update
        @book = Book.find(params[:id])
        if @book.update_attributes(params[:book])
          flash[:success] = "Object was successfully updated"
          render json: @book
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    
    def destroy
        @book = Book.find(params[:id])
        if @book.destroy
            flash[:success] = 'Object was successfully deleted.'
            render json: @author
        else
            flash[:error] = 'Something went wrong'
            redirect_to books_url
        end
    end
    

end
