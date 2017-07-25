class SellController < ApplicationController
    before_action:require_login
    
    def sell
        @textbooks = Textbook.all.order('created_at DESC')
    end
end
  