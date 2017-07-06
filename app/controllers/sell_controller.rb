class SellController < ApplicationController
    before_action:require_login
    
    def sell
        @textbooks = Textbook.all
    end
end
  