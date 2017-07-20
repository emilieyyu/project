class TextbooksController < ApplicationController
    before_action:require_login
    
    def index
        @textbooks = current_user.textbooks.order(:id)
    end
    
    def show
        @textbook = Textbook.find(params[:id])
    end
    
    def new
        @textbook = current_user.textbooks.build
    end
    
    def create
        @textbook = current_user.textbooks.build(textbook_params)
        
        if @textbook.save
            redirect_to textbook_path(@textbook), notice: "Textbook Added!"
        else
         @errors = @textbook.errors.full_messages
            render :new
        end
    end
    
    def edit
        @textbook = current_user.textbooks.find(params[:id])
    end
    
    def update
        @textbook = current_user.textbooks.find(params[:id])
        
        if @textbook.update_attributes(textbook_params)
            redirect_to textbook_path(@textbook), notice: "Textbook Added!"
        else
         @errors = @textbook.errors.full_messages
            render :new
        end    
    end
    
    def destroy
        textbook = current_user.textbooks.find(params[:id])
        textbook.destroy
        redirect_to textbooks_path, notice: "Deleted Textbook: #{textbook.name}"
    end
    
    private
    
    def textbook_params
        params.require(:textbook).permit(:name, :course, :instructor, :price, :description)
    end
end